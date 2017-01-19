<?php
App::uses('AppController', 'Controller');
App::import('Vendor', 'firebase/php-jwt/Authentication/JWT');
App::uses('HttpSocket', 'Network/Http');
/**
 * Api Controller
 *
 * @property Category $Category
 * @property PaginatorComponent $Paginator
 */
class ApiController extends AppController {


var $uses = array('Category','User','Outlet', 'Bill');

/**
 * Components
 *
 * @var array
 */
	public $components = array('RequestHandler', 'Paginator', 'Auth', 'Acl');
	
	public function beforeFilter() {
		parent::beforeFilter();
		//$this->Security->validatePost = false;
		//$this->layout = 'api_layout'; 
		$this->Auth->allow(array('api_login', 'request_login', 'request_users'));
		// $this->Security->unlockActions = array('api_login', 'request_login');
		/*$hash = $this->Auth->password($_SERVER['HTTP_PASSWORD']);
		$check = $this->User->find('first',
			array(
				'conditions' => array(
					'email' => $_SERVER['HTTP_EMAIL'],
					'password' => $hash,
					'status' => 1
				)
			)
		);
		
		if(!$check){
			//throw new Exception(__('Invalid login credentials.'))
			throw new UnauthorizedException(__('Invalid login credentials.'));
		}else{
			$this->Auth->allow();
		}*/
		
		
	}

public function rest_users() { 
		$users= $this->User->find('all');
        $this->set(array(
            'users' => $users,
            '_serialize' => array('users')
        ));
		
	}
	
	public function request_users(){
	
		// remotely post the information to the server
		
		$hash_key = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJuYW1lIjoiRmFydXEgU2hhaWsiLCJ1c2VybmFtZSI6ImZhcnVxQGdtYWlsLmNvbSIsImVtYWlsIjoiZmFydXFAZ21haWwuY29tIiwiZ3JvdXBfaWQiOiIxIiwic3RhdHVzIjoiMSIsImNyZWF0ZWQiOiIyMDE0LTA3LTIzIDEwOjQ2OjE0IiwibW9kaWZpZWQiOiIyMDE0LTA3LTIzIDEwOjQ2OjE0IiwiR3JvdXAiOnsiaWQiOiIxIiwibmFtZSI6IkFkbWluIiwiY3JlYXRlZCI6IjIwMTQtMDctMjMgMTA6NDU6MjciLCJtb2RpZmllZCI6IjIwMTQtMDctMjMgMTA6NDU6MjcifX0.tdp-OkpW6bWvyEMpFYUMGKsdzQ2vNVFzIgcr987xb5U";
		$link =  "http://" . $_SERVER['HTTP_HOST'] . $this->webroot.'api/rest_users.json';
		$data = null;
		$request = array( 
				'method' => 'POST',
                 'header' => array(
                        'AuthToken'=>$hash_key

                )
         );
         //$data['User']['token'] = $hash_key;
		$httpSocket = new HttpSocket();
		$response = $httpSocket->post($link, $data, $request);
		$this->set('response_code', $response->code);
		$this->set('response_body', $response->body);

		$this -> render('/Api/request_response');
	}
	
	
	
public function request_login(){
	
		// remotely post the information to the server
		print $link =  "http://" . $_SERVER['HTTP_HOST'] . $this->webroot.'api/api_login.json';

		$data = null;
		$httpSocket = new HttpSocket();
		$data['User']['email'] = 'faruq@gmail.com';
		$data['User']['password'] = 'faruq';
		$response = $httpSocket->post($link, $data );
		$this->set('response_code', $response->code);
		$this->set('response_body', $response->body);
		$arr = json_decode($response->body);
		
		$this -> render('/Api/request_response');
	}
	
	public function api_login() { pr($this->request->data);
		if ($this->Auth->login()) {
			$user = $this->Auth->user();
			//echo $this->Session->read('Auth.User.User.email');
			print $token = JWT::encode($user, Configure::read('Security.salt'));
			$this->Session->write('_token', $token);
			//$user['token'] = $token;
			$this->set('user', $user);
			$this->set('token', $token);
			//pr($user);
			$this->set('_serialize', array('user', 'token'));
		} else {
			throw new Exception(__('Email or password is wrong.'));
		}
	}
	
	/*public function api_login() {
		$this->set(array(
            'message' => 'login success',
            '_serialize' => array('categories')
        ));
	}*/
	
	
	public function bills_index() {
		$categories = $this->Bill->find('all', array('fields'=>array('Bill.*', 'U.username'),'joins' => array(
			array(
				'table' => 'users',
				'alias' => 'U',
				'type' => 'LEFT',
				'conditions' => array(
					'AND' => array(
						'Bill.created_by = U.id'				
					)
				)
			)
		)));
		
		$this->set(array(
            'bills' => $categories,
            '_serialize' => array('bills')
        ));
	}
	
	
	public function bills_view($id = null) {
		
		$options = array(
						'conditions' => array('Bill.' . $this->Bill->primaryKey => $id),
						'fields' => array('Bill.*', 'U.username'),
						'joins' => array(
							array(
							'table' => 'Users',
							'alias' => 'U',
							'type' => 'LEFT',
							'conditions' => array(
								'AND' => array(
									'U.id = Bill.created_by'				
								)
							)
							)
						)
					);
		$bill = $this->Bill->find('first', $options);
		
		$this->set(array(
            'bill' => $bill,
            '_serialize' => array('bill')
        ));
		
	}
	
	public function bills_add() {
		if ($this->request->is('post')) {			
			$this->Bill->create();			
			if ($this->Bill->save($this->request->data)) {			
				$message = 'The bill has been saved.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			} else {		
				$message = 'The bill could not be saved. Please, try again.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}			
		}else{
				$message = 'Invalid Request.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
		}
	}
	
	
	public function bills_edit($id = null) {
		
		if ($this->request->is(array('post', 'put'))) {
			if (!$id) {
				$message = 'Invalid bill.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}
			if($id) {
				if ($this->Bill->save($this->request->data)) {				
					$message = 'The bill has been saved.';
					$this->set(array(
						'message' => $message,
						'_serialize' => array('message')
					));
				} else {
					$message = 'The bill could not be saved. Please, try again.';
					$this->set(array(
						'message' => $message,
						'_serialize' => array('message')
					));
				}
			}
		}else{
				$message = 'Invalid Request.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
		}
	}
	
	
	public function bills_delete($id = null) {
		$this->Bill->id = $id;
		if (!$id) {
			$message = 'Invalid bill.';
			$this->set(array(
				'message' => $message,
				'_serialize' => array('message')
			));
		}
		else{
			//$this->request->allowMethod('post', 'delete');
			if ($this->Bill->delete()) {				
				$message = 'The bill has been deleted.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			} else {
				$message = 'The bill could not be deleted. Please, try again.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}
			
		}
	}
	
	
	
/**
 * index method
 *
 * @return void
 */
	public function categories_index() {

		$categories = $this->Category->find('all', array('fields'=>array('Category.*', 'U.username'),'joins' => array(
			array(
				'table' => 'users',
				'alias' => 'U',
				'type' => 'LEFT',
				'conditions' => array(
					'AND' => array(
						'Category.created_by = U.id'				
					)
				)
			)
		)));
		
		$this->set(array(
            'categories' => $categories,
            '_serialize' => array('categories')
        ));
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function categories_view($id = null) {
		
		$options = array(
						'conditions' => array('Category.' . $this->Category->primaryKey => $id),
						'fields' => array('Category.*', 'U.username'),
						'joins' => array(
							array(
							'table' => 'Users',
							'alias' => 'U',
							'type' => 'LEFT',
							'conditions' => array(
								'AND' => array(
									'U.id = Category.created_by'				
								)
							)
							)
						)
					);
		$category = $this->Category->find('first', $options);
		
		$this->set(array(
            'category' => $category,
            '_serialize' => array('category')
        ));
		
	}

/**
 * add method
 *
 * @return void
 */
	public function categories_add() {
		if ($this->request->is('post')) {			
			$this->Category->create();			
			if ($this->Category->save($this->request->data)) {			
				$message = 'The category has been saved.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			} else {		
				$message = 'The category could not be saved. Please, try again.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}			
		}else{
				$message = 'Invalid Request.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function categories_edit($id = null) {
		
		if ($this->request->is(array('post', 'put'))) {
			if (!$id) {
				$message = 'Invalid category.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}
			if($id) {
				if ($this->Category->save($this->request->data)) {				
					$message = 'The category has been saved.';
					$this->set(array(
						'message' => $message,
						'_serialize' => array('message')
					));
				} else {
					$message = 'The category could not be saved. Please, try again.';
					$this->set(array(
						'message' => $message,
						'_serialize' => array('message')
					));
				}
			}
		}else{
				$message = 'Invalid Request.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function categories_delete($id = null) {
		$this->Category->id = $id;
		if (!$id) {
			$message = 'Invalid category.';
			$this->set(array(
				'message' => $message,
				'_serialize' => array('message')
			));
		}
		else{
			//$this->request->allowMethod('post', 'delete');
			if ($this->Category->delete()) {				
				$message = 'The category has been deleted.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			} else {
				$message = 'The category could not be deleted. Please, try again.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}
			
		}
	}

}

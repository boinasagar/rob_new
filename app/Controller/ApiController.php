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


var $uses = array('Category','User','Outlet', 'Bill', 'UserDetail');

/**
 * Components
 *
 * @var array
 */
	public $components = array('RequestHandler', 'Paginator', 'Auth', 'Acl');
	
	public function beforeFilter() {
		$this->layout = 'api_layout';
		parent::beforeFilter();
		//$this->Security->validatePost = false;
		//$this->layout = 'api_layout'; 
		$this->Auth->allow(array('api_login', 'request_login', 'request_users', 'users_add'));
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
	
	
	public function users_index() {
		$users = $this->User->find('all', array('fields'=>array('User.*', 'UserDetail.*'),'joins' => array(
			array(
				'table' => 'user_details',
				'alias' => 'UserDetail',
				'type' => 'LEFT',
				'conditions' => array(
					'AND' => array(
						'User.id = UserDetail.user_id'				
					)
				)
			)
		)));
		
		$this->set(array(
            'users' => $users,
            '_serialize' => array('users')
        ));
	}
	
	
	public function users_view($id = null) {
		
		$options = array(
						'conditions' => array('User.' . $this->User->primaryKey => $id),
						'fields' => array('User.*', 'UserDetail.*'),
						'joins' => array(
							array(
							'table' => 'user_details',
							'alias' => 'UserDetail',
							'type' => 'LEFT',
							'conditions' => array(
								'AND' => array(
									'User.id = UserDetail.user_id'				
								)
							)
							)
						)
					);
		$user = $this->User->find('first', $options);
		
		$this->set(array(
            'user' => $user,
            '_serialize' => array('user')
        ));
		
	}
	
	public function users_add() {		
		if ($this->request->is('post')) {			
			foreach($this->request->data['User'] as $user_key => $user_val) {
				
				if(in_array($user_key, array('id', 'name', 'username', 'email', 'password', 'group_id', 'status', 'created', 'modified'))){
					$User['User'][$user_key] = $user_val; 
				}
				else{
					$User['UserDetail'][$user_key] = $user_val; 
				}				
				
			}
			
			if(isset($User['User']['password'])){
				$User['User']['password'] = AuthComponent::password($User['User']['password']);
			}
			
			$User['User']['username'] = $User['User']['email'];
			
			$chk_user = $this->User->find('first', array(
					  'conditions'=>array('email'=>$User['User']['email']),
					  'fields'=>array('id')
					));
					
			if($chk_user){
				$message = 'Email already exists.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));				
			}else{
			
				$this->User->create();			
				if ($this->User->save($User['User'])) {			
					
					//otp generation
					$string = '0123456789';
					$string_shuffled = str_shuffle($string);
					$otp_pwd = substr($string_shuffled, 1, 6);
					$opt_msg = $otp_pwd." is the One time password (OTP) for your registration at ROB.";
					$mobile = $User['UserDetail']['mobile'];
					$otp_url = "http://103.16.101.52:8080/bulksms/bulksms?username=ints-intech&password=123456&type=0&dlr=1&destination=$mobile&source=WEDDZO&message=$opt_msg";
									
					App::uses('HttpSocket', 'Network/Http');
					$HttpSocket = new HttpSocket();
					// string query
					$results = $HttpSocket->get($otp_url);
					//end -otp sent
					
					$id = $this->User->getLastInsertId();
					$User['UserDetail']['user_id'] = $id;
					$User['UserDetail']['otp'] = $otp_pwd;
					$this->UserDetail->create();	
					$this->UserDetail->save($User['UserDetail']);
					
					$message = 'The user has been saved.';
					$this->set(array(
						'message' => $message,
						'id' => $id,
						'_serialize' => array('message', 'id')
					));
				} else {		
					$message = 'The user could not be saved. Please, try again.';
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
	
	public function verify_otp() {
		if ($this->request->is('post')) {
			if (!$this->request->data['User']['id'] || !$this->request->data['User']['otp']) {
				$message = 'Invalid User.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}
			if($this->request->data['User']['id'] && $this->request->data['User']['otp']) {
					
					$userdetails_id = $this->UserDetail->find('first', array(
					  'conditions'=>array('user_id'=>$this->request->data['User']['id'], 'otp'=>$this->request->data['User']['otp']),
					  'fields'=>array('id')
					));
					//print_r($userdetails_id);
					if($userdetails_id){
						//$User['UserDetail']['id'] = $userdetails_id['UserDetail']['id'];
						$User['User']['id'] = $this->request->data['User']['id']; 
						$User['User']['status'] = '1';
						//print_r($User);
						$this->User->save($User['User']);
						//$this->UserDetail->save($User['UserDetail']);
						$message = 'The user has been verified successfully.';
						$this->set(array(
							'message' => $message,
							'_serialize' => array('message')
						));
					}else{
						$message = 'Invalid OTP.';
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
	}
	
	
	
	public function users_edit($id = null) {
		
		if ($this->request->is(array('post', 'put'))) {
			if (!$id) {
				$message = 'Invalid User.';
				$this->set(array(
					'message' => $message,
					'_serialize' => array('message')
				));
			}
			if($id) {
				
				foreach($this->request->data['User'] as $user_key => $user_val) {
				
					if(in_array($user_key, array('id', 'name', 'username', 'email', 'password', 'group_id', 'status', 'created', 'modified'))){
						$User['User'][$user_key] = $user_val; 
						if($user_key == 'id'){
							$User['UserDetail']['user_id'] = $user_val; 
						}
					}
					else{
						$User['UserDetail'][$user_key] = $user_val; 
					}
					
					$User['User']['name'] = $User['UserDetail']['first_name']." ".$User['UserDetail']['last_name']; 
				}
				
				if ($this->User->save($User['User'])) {
										
					$user_id = $this->UserDetail->find('first', array(
					  'conditions'=>array('user_id'=>$User['User']['id']),
					  'fields'=>array('id')
					));
					
					$User['UserDetail']['id'] = $user_id['UserDetail']['id']; 
					
					$this->UserDetail->save($User['UserDetail']);
					$message = 'The user has been saved.';
					$this->set(array(
						'message' => $message,
						'_serialize' => array('message')
					));
				} else {
					$message = 'The user could not be saved. Please, try again.';
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

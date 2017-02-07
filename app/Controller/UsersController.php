<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 * @property PaginatorComponent $Paginator
 */
class UsersController extends AppController {

/**
 * Components
 *
 * @var array
 */
	var $components = array('Auth', 'Acl', 'Paginator');
	
	
 public function beforeFilter() {
 	    parent::beforeFilter();
 	
 	    // For CakePHP 2.1 and up
 	    $this->Auth->allow(array('initDB'));
 	}
 
 	
 public function initDB() {
 //	$this->Acl->allow($aroAlias, $acoAlias);
     $group = $this->User->Group;
 
     // Allow admins to everything
     $group->id = 1;
     $this->Acl->allow($group, 'controllers');
 
     // allow users to only add and edit on posts and widgets
     $group->id = 2;
     $this->Acl->deny($group, 'controllers');
    $this->Acl->allow($group, 'controllers/users/add');
 //    $this->Acl->allow($group, 'controllers/groups/add');
 
 // allow basic users to log out
     $this->Acl->allow($group, 'controllers/users/logout');
     $this->Acl->allow($group, 'controllers/users/login');
 
     // we add an exit to avoid an ugly "missing views" error message
     echo "all done";
     exit;
 }	
 
 public function login() {
	    if ($this->request->is('post')) { 
	        if ($this->Auth->login()) {
				//check user status
				if($_SESSION['Auth']['User']['status']){
 	            return $this->redirect($this->Auth->redirect('add'));
				}else{
					$this->Session->setFlash('Your account is inactive');
					$this->redirect($this->Auth->logout());
				}
 	        }
 	        $this->Session->setFlash(__('Your email or password was incorrect.'));
 	    }
}


public function logout() {
 		$this->Session->setFlash('Good-Bye');
 		$this->redirect($this->Auth->logout());
}
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->User->recursive = 0;
		$this->set('users', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
		$this->set('user', $this->User->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->User->create();
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
			$this->request->data = $this->User->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->User->delete()) {
			$this->Session->setFlash(__('The user has been deleted.'));
		} else {
			$this->Session->setFlash(__('The user could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}

<?php
App::uses('AppController', 'Controller');


class UsersController extends AppController {
	
	var $components = array('Auth', 'Acl');
	
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
	            return $this->redirect($this->Auth->redirect('add'));
	        }
	        $this->Session->setFlash(__('Your email or password was incorrect.'));
	    }
	}
	
	public function add() {
		$this->set('groups', $this->User->Group->find('list'));
		if ($this->request->is('post')) { //print_r($this->request->data); exit;
//            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('Your post has been saved.'));
                return $this->redirect(array('action' => 'add'));
            }
            $this->Session->setFlash(__('Unable to add your post.'));
        }
		
	}
	
	public function logout() {
		$this->Session->setFlash('Good-Bye');
		$this->redirect($this->Auth->logout());
	}
	
}

<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
//	var $components = array('Acl', 'Session', 'Auth');
	public $components = array(
       'RequestHandler',
		'Security',
        'Auth' => array(
            'authorize' => array(
                'Actions' => array('actionPath' => 'Controller')
            ),
			'authenticate' => array(
            	
                'Form' => array(
					'userModel' => 'Users.User',
					'fields' => array('username' => 'email','password' => 'password')
                ),
                'BzUtils.JwtToken' => array(
				'fields' => array(
					'username' => 'email',
					'password' => 'password',
				),
				'header' => 'AuthToken',
				'userModel' => 'User',
				'scope' => array(
					'User.status' => 1
				)
			)
            )
        ),
		 'Acl',
        'Session'
    );
    public $helpers = array('Html', 'Form', 'Session');
	
	

    public function beforeFilter() {

	    $this->Auth->authenticate['all']['fields']['username'] = 'email';
		$this->Auth->authenticate['all']['fields']['password'] = 'password';
		
		//$this->Auth->authenticate['BzUtils.JwtToken']['all']['fields']['username'] = 'email';
		//$this->Auth->authenticate['BzUtils.JwtToken']['all']['fields']['password'] = 'password';
		
		$this->Auth->authenticate = array(
			'Form' => array(
				'fields' => array(
					'username' => 'email',
					'password' => 'password'
				)
			),
			'BzUtils.JwtToken' => array(
				'fields' => array(
					'username' => 'email',
					'password' => 'password',
				),
				'parameter' => '_token',
				'header' => 'AuthToken',
				//'header' => 'X_JSON_WEB_TOKEN',
				'userModel' => 'User',
				'scope' => array(
					'User.status' => 1
				)
			)
		);
		
		
		
    	 //$this->Auth->authorize = 'actions';
        //Configure AuthComponent
        $this->Auth->loginAction = array(
          'controller' => 'users',
          'action' => 'login'
        );
        $this->Auth->logoutRedirect = array(
          'controller' => 'users',
          'action' => 'login'
        );
        $this->Auth->loginRedirect = array(
          'controller' => 'users',
          'action' => 'add'
        );
        
 
    if(in_array($this->params['controller'],array('api'))){
    	$this->Security->csrfCheck = false;
        // For RESTful web service requests, we check the name of our contoller
        //$this->Auth->allow();
        // this line should always be there to ensure that all rest calls are secure
        //$this->Security->requireSecure();
       $this->Security->unlockedActions = array('api_login', 'request_login', 'categories_view', 'categories_add', 'bills_add');  
              
		}else{
			// setup out Auth
			//$this->Auth->allow('login', 'categories_index', 'categories_view', 'categories_add', 'categories_edit', 'api_login');
			$this->Auth->deny('add'); 
			$this->Auth->allow('login');     
		}
        
        
    }
	
	
}

<?php
App::uses('AppController', 'Controller');
/**
 * PromocodeCataegories Controller
 *
 * @property PromocodeCataegory $PromocodeCataegory
 * @property PaginatorComponent $Paginator
 */
class PromocodeCataegoriesController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('RequestHandler', 'Paginator', 'Auth', 'Acl');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->PromocodeCataegory->recursive = 0;
		$this->set('promocodeCataegories', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->PromocodeCataegory->exists($id)) {
			throw new NotFoundException(__('Invalid promocode cataegory'));
		}
		$options = array('conditions' => array('PromocodeCataegory.' . $this->PromocodeCataegory->primaryKey => $id));
		$this->set('promocodeCataegory', $this->PromocodeCataegory->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->PromocodeCataegory->create();
			if ($this->PromocodeCataegory->save($this->request->data)) {
				$this->Session->setFlash(__('The promocode cataegory has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The promocode cataegory could not be saved. Please, try again.'));
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
		if (!$this->PromocodeCataegory->exists($id)) {
			throw new NotFoundException(__('Invalid promocode cataegory'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->PromocodeCataegory->save($this->request->data)) {
				$this->Session->setFlash(__('The promocode cataegory has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The promocode cataegory could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('PromocodeCataegory.' . $this->PromocodeCataegory->primaryKey => $id));
			$this->request->data = $this->PromocodeCataegory->find('first', $options);
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
		$this->PromocodeCataegory->id = $id;
		if (!$this->PromocodeCataegory->exists()) {
			throw new NotFoundException(__('Invalid promocode cataegory'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->PromocodeCataegory->delete()) {
			$this->Session->setFlash(__('The promocode cataegory has been deleted.'));
		} else {
			$this->Session->setFlash(__('The promocode cataegory could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}

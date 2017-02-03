<?php
App::uses('PromocodeCataegory', 'Model');

/**
 * PromocodeCataegory Test Case
 *
 */
class PromocodeCataegoryTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.promocode_cataegory'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->PromocodeCataegory = ClassRegistry::init('PromocodeCataegory');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->PromocodeCataegory);

		parent::tearDown();
	}

}

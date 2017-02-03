<?php
App::uses('PromoCode', 'Model');

/**
 * PromoCode Test Case
 *
 */
class PromoCodeTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.promo_code'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->PromoCode = ClassRegistry::init('PromoCode');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->PromoCode);

		parent::tearDown();
	}

}

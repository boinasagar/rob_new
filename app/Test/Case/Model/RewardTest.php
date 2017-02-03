<?php
App::uses('Reward', 'Model');

/**
 * Reward Test Case
 *
 */
class RewardTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.reward'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Reward = ClassRegistry::init('Reward');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Reward);

		parent::tearDown();
	}

}

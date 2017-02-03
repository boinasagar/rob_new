<?php
/**
 * RewardFixture
 *
 */
class RewardFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false, 'key' => 'primary'),
		'user_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false, 'key' => 'index'),
		'promo_code' => array('type' => 'string', 'null' => false, 'default' => null, 'length' => 256, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'promo_code_cat' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false),
		'rewards' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false),
		'ref_user' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false, 'key' => 'index'),
		'type' => array('type' => 'string', 'null' => false, 'default' => null, 'length' => 256, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'created' => array('type' => 'timestamp', 'null' => false, 'default' => 'CURRENT_TIMESTAMP'),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
			'FK_rewards_users' => array('column' => 'user_id', 'unique' => 0),
			'FK_rewards_users_2' => array('column' => 'ref_user', 'unique' => 0)
		),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'user_id' => 1,
			'promo_code' => 'Lorem ipsum dolor sit amet',
			'promo_code_cat' => 1,
			'rewards' => 1,
			'ref_user' => 1,
			'type' => 'Lorem ipsum dolor sit amet',
			'created' => 1486112567
		),
	);

}

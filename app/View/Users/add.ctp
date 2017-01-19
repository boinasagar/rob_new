<?php
echo $this->Form->create('User', array('action' => 'add'));
echo $this->Form->inputs(array(
    'legend' => __('Add User'),
    'name',
    'email',
    'password',
	'group_id'


));
echo $this->Form->end('Save');
<div class="userDetails form">
<?php echo $this->Form->create('UserDetail'); ?>
	<fieldset>
		<legend><?php echo __('Edit User Detail'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('user_id');
		echo $this->Form->input('first_name');
		echo $this->Form->input('last_name');
		echo $this->Form->input('mobile');
		echo $this->Form->input('promo_code');
		echo $this->Form->input('dob');
		echo $this->Form->input('address');
		echo $this->Form->input('profile_pic');
		echo $this->Form->input('ip_address');
		echo $this->Form->input('reffered_by');
		echo $this->Form->input('mobile_info');
		echo $this->Form->input('wallet_amount');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('UserDetail.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('UserDetail.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List User Details'), array('action' => 'index')); ?></li>
	</ul>
</div>

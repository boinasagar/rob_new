<div class="rewards form">
<?php echo $this->Form->create('Reward'); ?>
	<fieldset>
		<legend><?php echo __('Add Reward'); ?></legend>
	<?php
		echo $this->Form->input('user_id');
		echo $this->Form->input('promo_code');
		echo $this->Form->input('promo_code_cat');
		echo $this->Form->input('rewards');
		echo $this->Form->input('ref_user');
		echo $this->Form->input('type');
		echo $this->Form->input('notes');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Rewards'), array('action' => 'index')); ?></li>
	</ul>
</div>

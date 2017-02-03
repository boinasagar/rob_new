<div class="rewards form">
<?php echo $this->Form->create('Reward'); ?>
	<fieldset>
		<legend><?php echo __('Edit Reward'); ?></legend>
	<?php
		echo $this->Form->input('id');
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

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Reward.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Reward.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Rewards'), array('action' => 'index')); ?></li>
	</ul>
</div>

<div class="userLevelAccesses form">
<?php echo $this->Form->create('UserLevelAccess'); ?>
	<fieldset>
		<legend><?php echo __('Edit User Level Access'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('table_name');
		echo $this->Form->input('table_alias');
		echo $this->Form->input('field_name');
		echo $this->Form->input('field_alias');
		echo $this->Form->input('view');
		echo $this->Form->input('edit');
		echo $this->Form->input('delete');
		echo $this->Form->input('emp_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('UserLevelAccess.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('UserLevelAccess.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List User Level Accesses'), array('action' => 'index')); ?></li>
	</ul>
</div>

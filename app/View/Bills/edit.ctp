<div class="bills form">
<?php echo $this->Form->create('Bill'); ?>
	<fieldset>
		<legend><?php echo __('Edit Bill'); ?></legend>
	<?php
		echo $this->Form->input('id');
		//echo $this->Form->input('bill_unique_id');
		echo $this->Form->input('bill_amount');
		echo $this->Form->input('status');
		echo $this->Form->input('bill_user');
		echo $this->Form->input('bill_image');
		echo $this->Form->input('comments');
		echo $this->Form->input('created_by');
		echo $this->Form->input('created_date');
		echo $this->Form->input('updated_by');
		echo $this->Form->input('updated_date');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Bill.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Bill.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Bills'), array('action' => 'index')); ?></li>
	</ul>
</div>

<div class="bills form">
<?php echo $this->Form->create('Bill'); ?>
	<fieldset>
		<legend><?php echo __('Add Bill'); ?></legend>
	<?php
		//echo $this->Form->input('bill_unique_id',array('type' => 'text'));
		echo $this->Form->input('bill_amount');
		echo $this->Form->input('status');
		echo $this->Form->input('bill_user');
		echo $this->Form->input('bill_image',array('type' => 'textarea'));
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

		<li><?php echo $this->Html->link(__('List Bills'), array('action' => 'index')); ?></li>
	</ul>
</div>

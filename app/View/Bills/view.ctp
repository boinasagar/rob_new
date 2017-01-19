<div class="bills view">
<h2><?php echo __('Bill'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Bill Unique Id'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['bill_unique_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Bill Amount'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['bill_amount']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Status'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['status']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Bill User'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['bill_user']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Bill Image'); ?></dt>
		<dd>
			<img src="<?php echo h($bill['Bill']['bill_image']); ?>">
			&nbsp;
		</dd>
		<dt><?php echo __('Comments'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['comments']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created By'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['created_by']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created Date'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['created_date']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Updated By'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['updated_by']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Updated Date'); ?></dt>
		<dd>
			<?php echo h($bill['Bill']['updated_date']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Bill'), array('action' => 'edit', $bill['Bill']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Bill'), array('action' => 'delete', $bill['Bill']['id']), array(), __('Are you sure you want to delete # %s?', $bill['Bill']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Bills'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bill'), array('action' => 'add')); ?> </li>
	</ul>
</div>

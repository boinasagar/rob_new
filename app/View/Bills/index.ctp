<div class="bills index">
	<h2><?php echo __('Bills'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('bill_unique_id'); ?></th>
			<th><?php echo $this->Paginator->sort('bill_amount'); ?></th>
			<th><?php echo $this->Paginator->sort('status'); ?></th>
			<th><?php echo $this->Paginator->sort('bill_user'); ?></th>
			<th><?php echo $this->Paginator->sort('bill_image'); ?></th>
			<th><?php echo $this->Paginator->sort('comments'); ?></th>
			<th><?php echo $this->Paginator->sort('created_by'); ?></th>
			<th><?php echo $this->Paginator->sort('created_date'); ?></th>
			<th><?php echo $this->Paginator->sort('updated_by'); ?></th>
			<th><?php echo $this->Paginator->sort('updated_date'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($bills as $bill): ?>
	<tr>
		<td><?php echo h($bill['Bill']['id']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['bill_unique_id']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['bill_amount']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['status']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['bill_user']); ?>&nbsp;</td>
		<td><img src="<?php echo h($bill['Bill']['bill_image']); ?>">&nbsp;</td>
		<td><?php echo h($bill['Bill']['comments']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['created_by']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['created_date']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['updated_by']); ?>&nbsp;</td>
		<td><?php echo h($bill['Bill']['updated_date']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $bill['Bill']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $bill['Bill']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $bill['Bill']['id']), array(), __('Are you sure you want to delete # %s?', $bill['Bill']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Bill'), array('action' => 'add')); ?></li>
	</ul>
</div>

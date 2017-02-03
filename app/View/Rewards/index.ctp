<div class="rewards index">
	<h2><?php echo __('Rewards'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('user_id'); ?></th>
			<th><?php echo $this->Paginator->sort('promo_code'); ?></th>
			<th><?php echo $this->Paginator->sort('promo_code_cat'); ?></th>
			<th><?php echo $this->Paginator->sort('rewards'); ?></th>
			<th><?php echo $this->Paginator->sort('ref_user'); ?></th>
			<th><?php echo $this->Paginator->sort('type'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('notes'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($rewards as $reward): ?>
	<tr>
		<td><?php echo h($reward['Reward']['id']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['user_id']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['promo_code']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['promo_code_cat']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['rewards']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['ref_user']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['type']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['created']); ?>&nbsp;</td>
		<td><?php echo h($reward['Reward']['notes']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $reward['Reward']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $reward['Reward']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $reward['Reward']['id']), array(), __('Are you sure you want to delete # %s?', $reward['Reward']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Reward'), array('action' => 'add')); ?></li>
	</ul>
</div>

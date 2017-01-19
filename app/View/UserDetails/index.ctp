<div class="userDetails index">
	<h2><?php echo __('User Details'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('user_id'); ?></th>
			<th><?php echo $this->Paginator->sort('first_name'); ?></th>
			<th><?php echo $this->Paginator->sort('last_name'); ?></th>
			<th><?php echo $this->Paginator->sort('mobile'); ?></th>
			<th><?php echo $this->Paginator->sort('promo_code'); ?></th>
			<th><?php echo $this->Paginator->sort('dob'); ?></th>
			<th><?php echo $this->Paginator->sort('address'); ?></th>
			<th><?php echo $this->Paginator->sort('profile_pic'); ?></th>
			<th><?php echo $this->Paginator->sort('ip_address'); ?></th>
			<th><?php echo $this->Paginator->sort('reffered_by'); ?></th>
			<th><?php echo $this->Paginator->sort('mobile_info'); ?></th>
			<th><?php echo $this->Paginator->sort('wallet_amount'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($userDetails as $userDetail): ?>
	<tr>
		<td><?php echo h($userDetail['UserDetail']['id']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['user_id']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['first_name']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['last_name']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['mobile']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['promo_code']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['dob']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['address']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['profile_pic']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['ip_address']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['reffered_by']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['mobile_info']); ?>&nbsp;</td>
		<td><?php echo h($userDetail['UserDetail']['wallet_amount']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $userDetail['UserDetail']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $userDetail['UserDetail']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $userDetail['UserDetail']['id']), array(), __('Are you sure you want to delete # %s?', $userDetail['UserDetail']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New User Detail'), array('action' => 'add')); ?></li>
	</ul>
</div>

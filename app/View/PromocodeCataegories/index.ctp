<div class="promocodeCataegories index">
	<h2><?php echo __('Promocode Cataegories'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('promo_code_type'); ?></th>
			<th><?php echo $this->Paginator->sort('promo_code_definition'); ?></th>
			<th><?php echo $this->Paginator->sort('rewards'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($promocodeCataegories as $promocodeCataegory): ?>
	<tr>
		<td><?php echo h($promocodeCataegory['PromocodeCataegory']['id']); ?>&nbsp;</td>
		<td><?php echo h($promocodeCataegory['PromocodeCataegory']['promo_code_type']); ?>&nbsp;</td>
		<td><?php echo h($promocodeCataegory['PromocodeCataegory']['promo_code_definition']); ?>&nbsp;</td>
		<td><?php echo h($promocodeCataegory['PromocodeCataegory']['rewards']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $promocodeCataegory['PromocodeCataegory']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $promocodeCataegory['PromocodeCataegory']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $promocodeCataegory['PromocodeCataegory']['id']), array(), __('Are you sure you want to delete # %s?', $promocodeCataegory['PromocodeCataegory']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Promocode Cataegory'), array('action' => 'add')); ?></li>
	</ul>
</div>

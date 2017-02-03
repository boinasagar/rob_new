<div class="promocodeCataegories view">
<h2><?php echo __('Promocode Cataegory'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($promocodeCataegory['PromocodeCataegory']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code Type'); ?></dt>
		<dd>
			<?php echo h($promocodeCataegory['PromocodeCataegory']['promo_code_type']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code Definition'); ?></dt>
		<dd>
			<?php echo h($promocodeCataegory['PromocodeCataegory']['promo_code_definition']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Rewards'); ?></dt>
		<dd>
			<?php echo h($promocodeCataegory['PromocodeCataegory']['rewards']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Promocode Cataegory'), array('action' => 'edit', $promocodeCataegory['PromocodeCataegory']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Promocode Cataegory'), array('action' => 'delete', $promocodeCataegory['PromocodeCataegory']['id']), array(), __('Are you sure you want to delete # %s?', $promocodeCataegory['PromocodeCataegory']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Promocode Cataegories'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Promocode Cataegory'), array('action' => 'add')); ?> </li>
	</ul>
</div>

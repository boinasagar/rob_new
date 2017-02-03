<div class="promocodeCataegories form">
<?php echo $this->Form->create('PromocodeCataegory'); ?>
	<fieldset>
		<legend><?php echo __('Edit Promocode Cataegory'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('promo_code_type');
		echo $this->Form->input('promo_code_definition');
		echo $this->Form->input('rewards');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('PromocodeCataegory.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('PromocodeCataegory.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Promocode Cataegories'), array('action' => 'index')); ?></li>
	</ul>
</div>

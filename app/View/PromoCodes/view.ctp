<div class="promoCodes view">
<h2><?php echo __('Promo Code'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($promoCode['PromoCode']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('User Id'); ?></dt>
		<dd>
			<?php echo h($promoCode['PromoCode']['user_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code'); ?></dt>
		<dd>
			<?php echo h($promoCode['PromoCode']['promo_code']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code Cat'); ?></dt>
		<dd>
			<?php echo h($promoCode['PromoCode']['promo_code_cat']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Notes'); ?></dt>
		<dd>
			<?php echo h($promoCode['PromoCode']['notes']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Promo Code'), array('action' => 'edit', $promoCode['PromoCode']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Promo Code'), array('action' => 'delete', $promoCode['PromoCode']['id']), array(), __('Are you sure you want to delete # %s?', $promoCode['PromoCode']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Promo Codes'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Promo Code'), array('action' => 'add')); ?> </li>
	</ul>
</div>

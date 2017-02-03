<div class="rewards view">
<h2><?php echo __('Reward'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('User Id'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['user_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['promo_code']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code Cat'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['promo_code_cat']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Rewards'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['rewards']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Ref User'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['ref_user']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Type'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['type']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Notes'); ?></dt>
		<dd>
			<?php echo h($reward['Reward']['notes']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Reward'), array('action' => 'edit', $reward['Reward']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Reward'), array('action' => 'delete', $reward['Reward']['id']), array(), __('Are you sure you want to delete # %s?', $reward['Reward']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Rewards'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Reward'), array('action' => 'add')); ?> </li>
	</ul>
</div>

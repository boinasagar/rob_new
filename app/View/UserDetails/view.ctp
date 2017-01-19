<div class="userDetails view">
<h2><?php echo __('User Detail'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('User Id'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['user_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('First Name'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['first_name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Last Name'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['last_name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Mobile'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['mobile']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Promo Code'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['promo_code']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Dob'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['dob']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Address'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['address']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Profile Pic'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['profile_pic']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Ip Address'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['ip_address']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Reffered By'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['reffered_by']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Mobile Info'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['mobile_info']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Wallet Amount'); ?></dt>
		<dd>
			<?php echo h($userDetail['UserDetail']['wallet_amount']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit User Detail'), array('action' => 'edit', $userDetail['UserDetail']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete User Detail'), array('action' => 'delete', $userDetail['UserDetail']['id']), array(), __('Are you sure you want to delete # %s?', $userDetail['UserDetail']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List User Details'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User Detail'), array('action' => 'add')); ?> </li>
	</ul>
</div>

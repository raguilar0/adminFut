<?php
/**
  * @var \App\View\AppView $this
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Player'), ['action' => 'edit', $player->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Player'), ['action' => 'delete', $player->id], ['confirm' => __('Are you sure you want to delete # {0}?', $player->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Players'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Player'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Teams'), ['controller' => 'Teams', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Team'), ['controller' => 'Teams', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="players view large-9 medium-8 columns content">
    <h3><?= h($player->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($player->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Identification') ?></th>
            <td><?= h($player->identification) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Last Name 1') ?></th>
            <td><?= h($player->last_name_1) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Last Name 2') ?></th>
            <td><?= h($player->last_name_2) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Phone') ?></th>
            <td><?= h($player->phone) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Address') ?></th>
            <td><?= h($player->address) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Team') ?></th>
            <td><?= $player->has('team') ? $this->Html->link($player->team->name, ['controller' => 'Teams', 'action' => 'view', $player->team->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($player->id) ?></td>
        </tr>
    </table>
</div>

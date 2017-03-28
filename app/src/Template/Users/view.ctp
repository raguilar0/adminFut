<br>
<br>


<div class="users view large-9 medium-8 columns content">
    <h3><?= h($user->name." ".$user->last_name) ?></h3>
    <table class="table">
        <tr>
            <th scope="row"><?= __('Nombre') ?></th>
            <td><?= h($user->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Apellidos') ?></th>
            <td><?= h($user->last_name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Username') ?></th>
            <td><?= h($user->username) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Role') ?></th>
            <td><?= $user->has('role') ? $this->Html->link($user->role->name, ['controller' => 'Roles', 'action' => 'view', $user->role->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Telefono') ?></th>
            <td><?= h($user->phone) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Direccion') ?></th>
            <td><?= h($user->address) ?></td>
        </tr>

    </table>
</div>

<div class="row text-center">
  <div class="col-xs-12">
     <?php
        echo $this->Html->link(
        'Atrás',
        ['action' => 'index'], ['class'=>'btn btn-primary']
        );
      ?>
  </div>
</div>

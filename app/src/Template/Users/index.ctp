<div class="row text-center">
	<div class="col-xs-12">
		<h1>Administración de usuarios</h1>
	</div>
</div>
<br>
<br>

<div class="users index large-9 medium-8 columns content">
    <div class="table-responsive">
    <table class="table read_association">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('name', ["label"=>"Nombre"]) ?></th>
                <th scope="col">Username</th>
                <th scope="col"><?= $this->Paginator->sort('rol_id') ?></th>
                <th scope="col">Telefono</th>
                <th scope="col">Direccion</th>
                <th scope="col" class="actions"><?= __('Acciones') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($users as $user): ?>
            <tr>
                <td><?= h($user->name)." ".h($user->last_name) ?></td>
                <td><?= h($user->username) ?></td>
                <td><?= $user->has('role') ? $this->Html->link($user->role->name, ['controller' => 'Roles', 'action' => 'view', $user->role->id]) : '' ?></td>
                <td><?= h($user->phone) ?></td>
                <td><?= h($user->address) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__(''), ['action' => 'view', $user->id],['class'=>'glyphicon glyphicon-eye-open btn btn-success']) ?>
                    <?= $this->Html->link(__(''), ['action' => 'edit', $user->id],['class'=>'glyphicon glyphicon-pencil btn btn-primary']) ?>
                    <?= $this->Form->postLink(__(''), ['action' => 'delete', $user->id], ['class'=>'glyphicon glyphicon-remove btn btn-danger','confirm' => __('Seguro que desea borrar esta caja?# {0}?', $user->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
  </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>

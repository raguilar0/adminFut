<div class="row text-center">
	<div class="col-xs-12">
		<h1>Modificacion de usuarios</h1>
	</div>
</div>

<br>

<div class="users form large-9 medium-8 columns content">
    <?= $this->Form->create($user) ?>
    <div class="form-group">
      <?= $this->Form->input('name', ['class' => 'form-control','label'=>'Nombre', 'value'=>$user['name'], 'maxlength'=> '20']); ?>
      <?= $this->Form->input('last_name', ['class' => 'form-control','label'=>'Apellidos','value'=>$user['last_name'], 'maxlength'=> '50']); ?>
      <?= $this->Form->input('phone', ['class' => 'form-control','label'=>'Telefono','value'=>$user['phone'], 'maxlength'=> '20']); ?>
      <?= $this->Form->input('address', ['class' => 'form-control','label'=>'Direccion','value'=>$user['address'], 'maxlength'=> '20']); ?>
      <?= $this->Form->input('username', ['class' => 'form-control','label'=>'Primer Apellido','value'=>$user['username'], 'maxlength'=> '0']); ?>
    </div>



    <div class="row text-center">
      <div class="col-xs-12">
          <?= $this->Html->link('Atrás', ['action' => 'modify'], ['class'=>'btn btn-primary']); ?>
      </div>
  </div>
</div>

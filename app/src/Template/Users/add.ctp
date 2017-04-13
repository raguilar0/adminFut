<div class="row text-center">
	<div class="col-xs-12">
		<h1>Agregar usuarios</h1>
	</div>
</div>

<br>


<div class="users form large-9 medium-8 columns content">
    <?= $this->Form->create($user) ?>
    <div class="form-group">


      <?$this->Form->control('name',['class' => 'form-control','label'=>'Nombre', 'value'=>$user['name'], 'maxlength'=> '20']); ?>
      <? echo $this->Form->control('last_name',['class' => 'form-control','label'=>'Apellidos', 'value'=>$user['last_name'], 'maxlength'=> '40']);?>
      <? echo $this->Form->control('username',['class' => 'form-control','label'=>'Username', 'value'=>$user['username'], 'maxlength'=> '20']);?>
      <? echo $this->Form->control('password',['class' => 'form-control','label'=>'Contrasenia', 'value'=>$user['password'], 'maxlength'=> '20']);?>
      <? echo $this->Form->control('rol_id', ['class' => 'form-control','options' => $roles], 'label'=>'Rol'); ?>
      <? echo $this->Form->control('phone',['class' => 'form-control','label'=>'Telefono', 'value'=>$user['phone'], 'maxlength'=> '20']);?>
      <? echo $this->Form->control('address',['class' => 'form-control','label'=>'Direccion', 'value'=>$user['address'], 'maxlength'=> '20']);?>
    </div

    <div class="row text-center">
      <div class="col-xs-12">
          <?= $this->Html->link('Atrás', ['action' => 'modify'], ['class'=>'btn btn-primary']); ?>
      </div>
  </div>
</div>

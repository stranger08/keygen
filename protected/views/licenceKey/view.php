<?php
/* @var $this LicenceKeyController */
/* @var $model LicenceKey */

$this->breadcrumbs=array(
	'Licence Keys'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List LicenceKey', 'url'=>array('index')),
	array('label'=>'Create LicenceKey', 'url'=>array('create')),
	array('label'=>'Update LicenceKey', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete LicenceKey', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage LicenceKey', 'url'=>array('admin')),
);
?>

<h1>View LicenceKey #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'key_value',
		'type',
	),
)); ?>

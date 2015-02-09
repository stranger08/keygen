<?php
/* @var $this LicenceTypesController */
/* @var $model LicenceType */

$this->breadcrumbs=array(
	'Licence Types'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List LicenceType', 'url'=>array('index')),
	array('label'=>'Create LicenceType', 'url'=>array('create')),
	array('label'=>'Update LicenceType', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete LicenceType', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage LicenceType', 'url'=>array('admin')),
);
?>

<h1>View LicenceType #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'code',
		'name',
		'comment',
	),
)); ?>

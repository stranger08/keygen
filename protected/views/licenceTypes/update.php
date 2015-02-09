<?php
/* @var $this LicenceTypesController */
/* @var $model LicenceType */

$this->breadcrumbs=array(
	'Licence Types'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List LicenceType', 'url'=>array('index')),
	array('label'=>'Create LicenceType', 'url'=>array('create')),
	array('label'=>'View LicenceType', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage LicenceType', 'url'=>array('admin')),
);
?>

<h1>Update LicenceType <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
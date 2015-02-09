<?php
/* @var $this LicenceKeyController */
/* @var $model LicenceKey */

$this->breadcrumbs=array(
	'Licence Keys'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List LicenceKey', 'url'=>array('index')),
	array('label'=>'Create LicenceKey', 'url'=>array('create')),
	array('label'=>'View LicenceKey', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage LicenceKey', 'url'=>array('admin')),
);
?>

<h1>Update LicenceKey <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
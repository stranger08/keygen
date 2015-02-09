<?php
/* @var $this LicenceKeyController */
/* @var $model LicenceKey */

$this->breadcrumbs=array(
	'Licence Keys'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List LicenceKey', 'url'=>array('index')),
	array('label'=>'Manage LicenceKey', 'url'=>array('admin')),
);
?>

<h1>Create LicenceKey</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
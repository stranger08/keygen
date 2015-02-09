<?php
/* @var $this LicenceTypesController */
/* @var $model LicenceType */

/*$this->breadcrumbs=array(
	'Licence Types'=>array('index'),
	'Create',
);*/

$this->menu=array(
	array('label'=>'List LicenceType', 'url'=>array('index')),
	array('label'=>'Manage LicenceType', 'url'=>array('admin')),
);
?>

<h1>Create LicenceType</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
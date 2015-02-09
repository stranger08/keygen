<?php
/* @var $this LicenceTypesController */
/* @var $dataProvider CActiveDataProvider */

/*$this->menu=array(
	array('label'=>'Create LicenceType', 'url'=>array('create')),
	array('label'=>'Manage LicenceType', 'url'=>array('admin')),
);*/
?>

<h1>Licence Types</h1>

<table id="licence-types-table">
<thead>
	<tr><th>Code</th><th>Name</th><th>Limit</th></th><th>Comment</th></tr>
</thead>
<tbody>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
</tbody>
</table>


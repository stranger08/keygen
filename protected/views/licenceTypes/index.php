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
	<tr><th>Vendor's Part Number</th><th>Description</th></th><th>Comments</th></tr>
</thead>
<tbody>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
</tbody>
</table>


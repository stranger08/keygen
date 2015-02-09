<?php
/* @var $this LicenceKeyController */
/* @var $dataProvider CActiveDataProvider */

/*$this->breadcrumbs=array(
	'Licence Keys',
);*/

/*$this->menu=array(
	array('label'=>'Create LicenceKey', 'url'=>array('create')),
	array('label'=>'Manage LicenceKey', 'url'=>array('admin')),
);*/
?>

<h1>Licence Keys</h1>

<table id="licence-types-table">
<thead>
	<tr><th>Key</th><th>Type</th></th></tr>
</thead>
<tbody>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
</tbody>
</table>

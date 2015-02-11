<?php
/* @var $types All available licence types */
/* @var $this SiteController */
$this->pageTitle=Yii::app()->name . ' - Generator';
?>
<h1>Generate Licence Keys</h1>

<div id="form-wrapper">
	<div class="form-line">
		<div class="inner-line">
			<select form="" name="type">
				<?php $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$types,
					'itemView'=>'_option',
				)); ?>
			</select>
			<input form="licence-form" type="text" name="LB10"> </input>
		
			<div class="rem-licence add-rem-button">
				&nbsp;
			</div>
			<div class="add-licence add-rem-button">
					Add another licence type
			</div>
			
		</div>
	</div>


	<form id="licence-form" action="/keygen/index.php?r=site/generation" method="post">
			<input type="submit" value="Generate"> </input>
	</form>
	<span id="validation-errors">Validation error messages goes here.</span>
</div>
<p>
Choose the type of the licence and write the number of amount needed. You can select several licence types by clicking "Add another licence type" button. As soon as you are clear about your choice, press "Generate".
</p>

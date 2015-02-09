<?php
/* @var $types All available licence types */
/* @var $this SiteController */
$this->pageTitle=Yii::app()->name . ' - Generator';
?>
<h1>Generate Licence Keys</h1>
<p>Choose the type of the licence and write the number of amount needed. You can select several licence types by clicking "Add another licence type" button. As soon as you are clear about your choice, press "Generate".</p>

<div id="form-wrapper">
	<div class="form-line">
		<div class="inner-line">
			<select form="" name="type">
				<?php $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$types,
					'itemView'=>'_option',
				)); ?>
				<!--<option value="LB10">Light Bronze Edition</option>
				<option value="LS50">Light Silver Edition</option>
				<option value="LG100">Light Gold Edition</option>
				<option value="SB10">Standard Bronze Edition</option>
				<option value="SS50">Standard Silver Edition </option>
				<option value="SG100">Standard Gold Edition</option>
				<option value="PB10">Professional Bronze Edition</option>
				<option value="PS50">Professional Silver Edition</option>
				<option value="PG100">Professional Gold Edition</option>-->
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


	<form id="licence-form" method="GET">
			<input type="submit" value="Generate"> </input>
	</form>
</div>

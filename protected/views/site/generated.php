<?php
/* @var $this SiteController */
/* @var $keys recently generated keys */
/* @var $display_params parameters from a request*/

/*
 * This file should be edited
 *
 *
 *
 */
?>

<?php if ( !isset( $display_params)): ?>

<h1>Licence Keys</h1>

<table id="licence-types-table">
<thead>
	<tr><th>Key</th><th>Type</th></th></tr>
</thead>
<tbody>
<?php foreach($keys as $_key): ?>
	<tr><td><?php echo CHtml::encode($_key->l_key_value); ?></td><td><?php echo CHtml::encode($_key->lic_type->name); ?></td></tr>
<?php endforeach;?>
</tbody>
</table>

<?php else: ?>

	<table id="generated-keys-table">
	<thead>
	</thead>
	<tbody>
	<?php
		$raw_html_strings = array();
		
		foreach($display_params as $_type => $_count){
			$_licence = LicenceType::model()->findByAttributes(array('code' => $_type));
			$raw_html_strings[ $_type ] = "<th>" . $_licence->name  ."</th>";
		}
		
		foreach( $keys as $_key ){
			$raw_html_strings[ $_key->lic_type->code ]  .= "<tr><td>" . $_key->l_key_value . "</td></tr>"  ;
		}
		
		foreach( $raw_html_strings as $_output){
			echo $_output;
		}
	?>
	</tbody>
	</table>
<?php endif; ?>
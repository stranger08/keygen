<?php
/**
 * This is the model class for table "licence_keys".
 *
 * The followings are the available columns in table 'licence_keys':
 * @property integer $id
 * @property string $key_value
 * @property integer $type
 */
class LicenceKey extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'l_keys';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('l_key_value, type', 'required'),
			array('type', 'numerical', 'integerOnly'=>true),
			array('l_key_value', 'length', 'max'=>20),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, l_key_value, type', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'lic_type' => array(self::BELONGS_TO, 'LicenceType', 'type')
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'l_key_value' => 'Key Value',
			'type' => 'Type',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('l_key_value',$this->key_value,true);
		$criteria->compare('type',$this->type);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return LicenceKey the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	/**
	  * Returns random character from a ranges A to Z and 0 to 9
	  *
	  */
	private static function rand_char(){
		$char_array = range('0', '9') + range('A', 'Z') ;
		return $char_array[ array_rand($char_array) ]  ;
	}
	/**
	  *	Generates key of structure XXXX-XXXX-XXXX with  random characters from a method above
	  *
	  */
	private static function generate_licence_key(){
			return LicenceKey::rand_char() . LicenceKey::rand_char() . LicenceKey::rand_char() . LicenceKey::rand_char() 
						. "-" . LicenceKey::rand_char() . LicenceKey::rand_char() . LicenceKey::rand_char() . LicenceKey::rand_char()
							. "-" . LicenceKey::rand_char() . LicenceKey::rand_char() . LicenceKey::rand_char() . LicenceKey::rand_char();
	}
	/**
	  * "unique" forbids to return the key which already exists in database. In this case, method calls itself to create new key.
	  *
	  * FIX ME - There are limited combinations of different keys using this algorithm. After  34^16 generated keys this method will go infinitive loop.
	  */	//																											- -  -All possible variations	(3 189 059 870 763 703 892 770 816)
	private static function generate_uniq_licence_key(){
		
		$key = LicenceKey::generate_licence_key();
		
		if ( LicenceKey::model()->findByAttributes(array("l_key_value" => $key) )  == NULL){
			return $key;
		}
		else {
			return LicenceKey::generate_uniq_licence_key();
		}
	}
	/**
	  *	Generates licence keys by given parameters array;
	  *
	  *	 Parameters array structure:
	  *		key => licence code
	 *         value => amount of licence numbers to generate
	  *
	  */
	public static function generate_keys( $params ){
		
		$keys = array();
		
		foreach ( $params as $l_type => $amount){
			
			$_type =  LicenceType::model()->findByAttributes(array("code" => $l_type) )->id;
			$_codes_generated = 0;
			
			while( $_codes_generated++ < $amount ){
				$model = new LicenceKey;
				$model->l_key_value = LicenceKey::generate_uniq_licence_key();
				$model->type = $_type;
				$model->save();
				array_push($keys, $model);
			}
		}
		return $keys;
	}
}

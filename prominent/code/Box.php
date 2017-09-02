<?php
	class Box extends DataObject{
		
		public static $db = array(
			'Title' => 'Varchar(200)',
			'Description' => 'Text',
			'MobileDescription' => 'Text',
			'Colour' => 'Text',
            'SortOrder'=>'Int'
		);
		
		public static $has_one = array(
			'BoxImage' => 'Image',
			'Page' => 'Page',
			'LinkPage' => 'SiteTree'
		);
                
        public static $default_sort='SortOrder';		
        
		public function getCMSFields() {
			$colourDrop=DropdownField::create('Colour','Box background colour', array(
				'unselected' => 'unselected',
				'blue' => 'blue',
				'darkblue'=> 'darkblue',
				'grey' => 'grey',
				'pink' => 'pink'
			 ));

			return new FieldList(
				new TextField('Title', 'Title'),
				new TextareaField('Description', 'Description'),
				$colourDrop,
				new TextareaField('MobileDescription', 'Mobile only description'),
				new TreeDropdownField('LinkPageID', 'Select a page to link to from the image', 'SiteTree'),
				new UploadField('BoxImage', 'Image')
			);
		}
		
	}

<?php
	class RelatedBlog extends DataObject{
		public static $db = array(
			'Title' => 'Varchar(200)',
			'Description' => 'Text',
            'ExternalLink' => 'Text',
            'SortOrder'=>'Int'                          
		);
		
		public static $has_one = array(
			'BlogEntry' => 'BlogEntry',
			'Page' => 'SiteTree'
		);
                
        public static $default_sort='SortOrder';		
                
		public function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Title'),
				new TextareaField('Description', 'Description'),
        		new TextField('ExternalLink', 'External link - needs to start with http:\\'),
				new TreeDropdownField('PageID', 'Select a page to link to from the image', 'SiteTree')
			);
		}

	}

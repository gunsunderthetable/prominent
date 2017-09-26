<?php

class TeamMemberPage extends ContentPage {

        public static $db = array(
            'Linkedin' => 'varchar(200)',
            'Email' => 'varchar(200)'
        );
        public static $has_one = array(
            'StaffImage' => 'Image'
            );

        private static $hide_ancestor = 'Page';

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->removeByName("Map");
            $fields->removeByName("ShowNavigationPanel");
            $fields->removeByName("ListChildrenAsTiles");
            $fields->removeByName("Boxes");

            $fields->addFieldToTab('Root.Main', new TextField("Linkedin", "Linkedin link (include http://)"),'Content');  
            $fields->addFieldToTab('Root.Main', new TextField("Email", "Email link"),'Content');  
            
            $fields->addFieldToTab('Root.TileInfo', new UploadField("StaffImage", "Staff image"));  

            return $fields; 
        }     	

}

class TeamMemberPage_Controller extends ContentPage_Controller {

	
}

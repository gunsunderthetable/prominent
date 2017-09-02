<?php

class TeamMemberPage extends ContentPage {

        public static $has_one = array(
            'StaffImage' => 'Image'
            );

        private static $hide_ancestor = 'Page';

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->removeByName("Map");
            $fields->removeByName("ShowNavigationPanel");
            $fields->removeByName("ListChildrenAsTiles");
            
            $fields->addFieldToTab('Root.TileInfo', new UploadField("StaffImage", "Staff image"));  
            return $fields; 
        }     	

}

class TeamMemberPage_Controller extends ContentPage_Controller {

	
}

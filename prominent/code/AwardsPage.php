<?php

class AwardsPage extends Page {
        public static $db = array(
            'ListChildrenAsTiles' => 'Boolean'
            ); 

        public static $has_one = array(
            'TileImage' => 'Image'
            );

        private static $hide_ancestor = 'Page';

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->removeByName("ShowNavigationPanel");
            $fields->removeByName("AlternateHeaderStyle");
            $fields->removeByName("TileInfo");


            $fields->addFieldToTab('Root.Main', new CheckBoxField("ListChildrenAsTiles", "List my child pages as tiles"), "Content");

            return $fields; 
        }     	

}

class AwardsPage_Controller extends Page_Controller {

	
}

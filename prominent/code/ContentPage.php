<?php

class ContentPage extends Page {
        public static $db = array(
            'ListChildrenAsTiles' => 'Boolean'
            ); 

        public static $has_one = array(
            'TileImage' => 'Image'
            );

        private static $hide_ancestor = 'Page';

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.Main', new CheckBoxField("ListChildrenAsTiles", "List my child pages as tiles"), "Content");
            $fields->addFieldToTab('Root.TileInfo', new UploadField("TileImage", "Tile image for parent page"));  

            return $fields; 
        }     	

}

class ContentPage_Controller extends Page_Controller {

	
}

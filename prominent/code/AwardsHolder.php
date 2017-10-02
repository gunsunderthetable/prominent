<?php

class AwardsHolder extends ContentPage {

        public function getCMSFields() {
            $fields = parent::getCMSFields();
            $fields->removeByName("ShowNavigationPanel");
            $fields->removeByName("AlternateHeaderStyle");
            $fields->removeByName("TileInfo");
            $fields->removeByName("ListChildrenAsTiles");
            $fields->removeByName("Boxes");


            return $fields; 
        }

        // public function getAwardsCgildren() {

        // }  	

}

class AwardsHolder_Controller extends ContentPage_Controller {

	
}

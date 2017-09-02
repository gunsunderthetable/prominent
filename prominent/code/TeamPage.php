<?php

    class TeamPage extends Page {
   
        private static $allowed_children = array(
            'TeamMemberPage'
        );

        public static $has_one = array(
            'PageImage' => 'Image'
            );

        function getCMSFields(){
            $fields = parent::getCMSFields();

            $fields->removeByName("Map");

            return $fields;
        }        
         
    }

    class TeamPage_Controller extends Page_Controller{


    }

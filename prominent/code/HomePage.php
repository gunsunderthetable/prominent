<?php

    class HomePage extends Page {

        public static $db = array(
            "MobileTitle" => "Text",
            "MobileText" => "Text"
        );


        public static $has_one = array(
            "MobileHeader" => 'Image'
        );
   
        public static $has_many = array(
            "Slides" => "Slide"
        ); 

        function getCMSFields(){
            $fields = parent::getCMSFields();

            $fields->removeByName("Map");

            $gridFieldBoxConfig = GridFieldConfig::create()->addComponents(
              new GridFieldSortableRows('SortOrder'),                         
              new GridFieldToolbarHeader(),
              new GridFieldAddNewButton('toolbar-header-right'),
              new GridFieldSortableHeader(),
              new GridFieldDataColumns(),
              new GridFieldPaginator(30),
              new GridFieldEditButton(),
              new GridFieldDeleteAction(),
              new GridFieldDetailForm()
            );

            $gridField = new GridField("Slides", "Slides", $this->Slides(), $gridFieldBoxConfig);
            $fields->addFieldToTab("Root.Slides", $gridField); 
            $fields->addFieldToTab("Root.MobileVersion",new UploadField('MobileHeader', 'Image'));
            $fields->addFieldToTab("Root.MobileVersion",new TextField('MobileTitle', 'Mobile title'));
            $fields->addFieldToTab("Root.MobileVersion",new TextAreaField('MobileText', 'Mobile text'));

            return $fields;
        }        
         
    }

    class HomePage_Controller extends Page_Controller{


    }

<?php

    class HomePage extends Page {
   
        public static $has_many = array(
            "Boxes" => "Box",
            "Slides" => "Slide"
        ); 

        function getCMSFields(){
            $fields = parent::getCMSFields();

            $fields->removeByName("Map");
            $fields->addFieldToTab("Root.Boxes", new CheckBoxField('NoMargin','No gaps between boxes'));                  
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

            $gridField = new GridField("Boxes", "Boxes", $this->Boxes(), $gridFieldBoxConfig);
            $fields->addFieldToTab("Root.Boxes", $gridField); 

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

            return $fields;
        }        
         
    }

    class HomePage_Controller extends Page_Controller{


    }

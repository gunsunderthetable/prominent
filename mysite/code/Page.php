<?php
class Page extends SiteTree {

       private static $db = array(
            'ShowNavigationPanel' => 'Boolean',
            'MenuIntro' => 'Text',
            'PageIntro' => 'Text',
            'AlternateHeaderStyle' => 'Boolean',
            "Colour" => "Enum('unselected,blue,darkblue,grey,pink','unselected')",
            "VideoPaste" => "HTMLText"
	   );
	   private static $has_one = array(
            "MyWidgetArea" => "WidgetArea"
        );

       private static $has_many = array(
            "Boxes" => "Box"
        );
        
       public function getCMSFields() {
            $fields = parent::getCMSFields();

            $fields->addFieldToTab('Root.Main', new DropdownField("Colour", "Colour for the parent page",$this->dbObject('Colour')->enumValues()),'Content'); 

            $fields->addFieldToTab('Root.TileInfo', new TextAreaField("MenuIntro", "Parent page intro text")); 
            $fields->addFieldToTab('Root.Main', new TextAreaField("PageIntro", "Bold page intro text"), "Content");  
            $fields->addFieldToTab('Root.Main', new CheckBoxField("AlternateHeaderStyle", "Alternate header style"), "Content");
            $fields->addFieldToTab('Root.Main', new CheckBoxField("ShowNavigationPanel", "Show right hand navigation"), "Content"); 
            $fields->addFieldToTab('Root.Video', new TextAreaField("VideoPaste", "Paste code from Youtube here:")); 


            $gridFieldBoxConfig = GridFieldConfig::create()->addComponents(
              new GridFieldSortableRows('SortOrder'),                         
              new GridFieldToolbarHeader(),
              new GridFieldAddNewButton('toolbar-header-right'),
              new GridFieldSortableHeader(),
              new GridFieldDataColumns(),
              new GridFieldPaginator(60),
              new GridFieldEditButton(),
              new GridFieldDeleteAction(),
              new GridFieldDetailForm()
            );

            $gridField = new GridField("Boxes", "Boxes", $this->Boxes(), $gridFieldBoxConfig);
            $fields->addFieldToTab("Root.Boxes", $gridField); 
            
            $fields->addFieldToTab("Root.Widgets", new WidgetAreaEditor("MyWidgetArea"));
            return $fields;
        }
        
        public function getNews($num=5) {
            $holder = BlogHolder::get()->First();
            return ($holder) ? BlogEntry::get()->filter('ParentID', $holder->ID)->limit($num) : false;
        }
        

        function getFooterLinks() {
            //return ContentController::current_site_config()->FooterLinks ? $this->parseRawLinks(ContentController::current_site_config()->FooterLinks) : '';
            $config = SiteConfig::current_site_config(); 
            if($footerLinks=$config->FooterLinks) {
                $set = new ArrayList();
                $f = explode("\n", $footerLinks);
                foreach ($f as $p) {
                    $firstSpace = strpos($p, " ");
                    $url = substr($p, 0, $firstSpace);
                    $linkText = substr($p, $firstSpace);

                    $data = new ArrayData(array(
                             'URL' => $url,
                             'LinkText' => htmlspecialchars($linkText)
                         )        
                    );        
                    $set->add($data);  
                }
                return $set;
            };
        }        
        
        function getHeaderLinks() {
            //return ContentController::current_site_config()->FooterLinks ? $this->parseRawLinks(ContentController::current_site_config()->FooterLinks) : '';
            $config = SiteConfig::current_site_config(); 
            if($headerLinks=$config->HeaderLinks) {
                $set = new ArrayList();
                $f = explode("\n", $headerLinks);
                foreach ($f as $p) {
                    $firstSpace = strpos($p, " ");
                    $url = substr($p, 0, $firstSpace);
                    $linkText = substr($p, $firstSpace);

                    $data = new ArrayData(array(
                             'URL' => $url,
                             'LinkText' => htmlspecialchars($linkText)
                         )        
                    );        
                    $set->add($data);  
                }
                return $set;
            };
        }          
  
        
}
class Page_Controller extends ContentController {

	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
                Requirements::javascript('mysite/javascript/jquery-1.11.0.min.js');
                Requirements::javascript('mysite/javascript/jquery.sidr.min.js');                
                Requirements::javascript('mysite/javascript/site.js');
                Requirements::javascript('mysite/javascript/classie.js');
                
		if($this->hasMap()){
			$this->MakeGoogleMap();
		}                
	}

	public function hasMap(){
		return ($this->Address || ($this->Latitudes && $this->Longitudes));
	}       
}

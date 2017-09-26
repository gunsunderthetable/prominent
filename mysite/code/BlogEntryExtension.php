<?php

class BlogEntryExtension extends DataExtension {

    private static $has_one = array(
        'BlogImage' => 'Image'
      );
    private static $has_many = array(
        'RelatedBlogs' => 'RelatedBlog'
      );

    public function updateCMSFields(FieldList $fields) {
          $fields->addFieldToTab('Root.Main', new UploadField('BlogImage', 'Blog Image'),'Content');

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
          $gridField = new GridField("RelatedBlogs", "RelatedBlog", $this->owner->RelatedBlogs(), $gridFieldBoxConfig);
          $fields->addFieldToTab("Root.RelatedBlogs", $gridField); 
    }

    public function getMyBlogSiblings() {
         if ($blogSiblings = BlogEntry::get()->filter('ParentID', $this->owner->ParentID)->sort('Date', 'DESC')) {
            return $blogSiblings;
         } 
    } 
    
    
}
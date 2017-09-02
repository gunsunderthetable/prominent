
<div class="twelve columns">
    <div id="pagePanel" class="clearFix<% if $ShowNavigationPanel %> showNavPanel<% end_if %>">
        <div id="headerWrap" <% if $AlternateHeaderStyle %>class="alternateHeaderStyle"<% end_if %>>
            <h1>$Title</h1>
        </div>
        
        <div class="pageContent">
            <div class="blogEntry">
                <% if TagsCollection %>
                    <p class="tags">
                        <% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
                        <% loop TagsCollection %>
                                <a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
                        <% end_loop %>
                    </p>
                <% end_if %>
            
                <% if $BlogImage %>
                <div class="blogImage">
                    <% with BlogImage %>
                     <img src="$CroppedImage(1200,852).URL" alt="$Title" />
                    <% end_with %>
                </div>
                <% end_if %> 

                <% if $PageIntro || $Content %>
                <div id="readablePageWidth" <% if not $ShowNavigationPanel %>class="restricted"<% end_if %>>
                    <% if $PageIntro %>
                        <p class="pageIntro">$PageIntro</p>
                    <% end_if %>
                    <% if $Content %>
                        $Content
                    <% end_if %>
                <% end_if %>
                </div>
                <p class="shareBlogStory">
                <span>Share this article:</span><a href="https://twitter.com/home?status={$AbsoluteLink}" target="_blank"><img src ="$ThemeDir/images/twitter_colour.png" alt="share on twitter" title="share on twitter" /></a>
                 <a href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" target="_blank"><img src ="$ThemeDir/images/facebook_colour.png" alt="share on facebook" title="share on facebook" /></a>
                </p>
            </div>

            $Form
            $PageComments
        </div>
        <div class="rightPanel">
            $MyWidgetArea
            <% include ImageLinks %>
        </div>
    </div>
</div>


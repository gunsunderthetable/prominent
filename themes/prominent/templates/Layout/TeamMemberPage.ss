<div class="twelve columns">
        <div id="pagePanel" class="clearFix showNavPanel">
            <%-- $Breadcrumbs  --%>
            <div id="headerWrap" <% if $AlternateHeaderStyle %>class="alternateHeaderStyle"<% end_if %>>
                <h1>$Title</h1>
            </div>
            <div class="pageContent">
                <div id="readablePageWidth">
                    <% if StaffImage %>
                         <img class="mainPageImage" src="$StaffImage.CroppedImage(1040,620).URL" alt="$Title" title="$Title" />
                    <% end_if %>
                    <% if $PageIntro %>
                        <p class="pageIntro">$PageIntro</p>
                    <% end_if %>
                    $Content
                    <div class="videoContainer">
                        $VideoPaste
                    </div>
                </div>
                $Form
                $PageComments
            </div>
            <div class="rightPanel">
                <% include SubNav %>
                $MyWidgetArea
                <% include ImageLinks %>
            </div>
        </div>
</div>



<div class="twelve columns">
        <div id="pagePanel" class="clearFix showNavPanel">
            <%-- $Breadcrumbs  --%>
            <div id="headerWrap" <% if $AlternateHeaderStyle %>class="alternateHeaderStyle"<% end_if %>>
                <h1>$Title</h1>
            </div>
            <div class="pageContent">
                <% if $PageIntro || $Content %>
                <div id="readablePageWidth" class="restricted">
                <% if StaffImage %>
                     <img class="mainPageImage" src="$StaffImage.CroppedImage(1040,620).URL" alt="$Title" title="$Title" />
                <% end_if %>
                    <% if $PageIntro %>
                        <p class="pageIntro">$PageIntro</p>
                    <% end_if %>
                    <% if $Content %>
                        $Content
                    <% end_if %>
                <% end_if %>
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



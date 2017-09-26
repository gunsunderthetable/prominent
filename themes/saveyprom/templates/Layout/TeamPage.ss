<div class="twelve columns">
    <div id="pagePanel" class="clearFix">
        <div id="headerWrap" <% if $AlternateHeaderStyle %>class="alternateHeaderStyle"<% end_if %>>
            <h1>$Title</h1>
        </div>
        <div class="pageContent">
            <% if $PageIntro || $Content %>
            <div id="readablePageWidth" <% if not $ShowNavigationPanel %>class="restricted"<% end_if %>>
                <% if $PageIntro %>
                    <p class="pageIntro">$PageIntro</p>
                <% end_if %>
                <% if $Content %>
                    $Content
                <% end_if %>
            </div>
            <% end_if %>
            <%-- -----------------------------list staff page children  ---------------- --%>
            <% if $Children %>
            <div id="staffList" class="clearFix">

            <% loop $Children %>
                <div class="staffPanel $evenOdd">
                    <div class="content">
                        <a href="$Link">
                        <% if $StaffImageID %>
                            <img class="boxImage" src="$TileImage.CroppedImage(520,520).URL" alt="$Title" title="$Title" />
                        <% end_if %>

                        <div class="boxText">
                            <h2>$Title</h2>
                            <div class="boxTextDivider"></div>
                            <p>$MenuIntro</p>
                        </div>
                        <div class="staffLinks">
                            <% if $Linkedin %><a href="$Linkedin"><img src="$ThemeDir/images/staff_linkedin.png" alt="Linkedin link" title="Linkedin link"/></a><% end_if %>
                            <% if $Email %><a href="$Email"><img src="$ThemeDir/images/staff_email.png" alt="email link" title="email link"/></a><% end_if %>
                        </div>
                       </a>
                    </div>
                </div>
            <% end_loop %>
            </div>
            <% end_if %>
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


<% require css("themes/prominent/css/staff.css") %> 

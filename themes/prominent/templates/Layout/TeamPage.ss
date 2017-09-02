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
            <%-- -----------------------------list children  ---------------- --%>
            <% if $Children %>
            <div id="boxes" class="staffListing clearFix">

            <% loop $Children %>
                <div class="box $colour staffPanel $evenOdd">
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



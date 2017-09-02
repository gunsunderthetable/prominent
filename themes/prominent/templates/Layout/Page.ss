<div class="twelve columns">
        <div id="pagePanel" class="clearFix<% if $ShowNavigationPanel %> showNavPanel<% end_if %>">
            <%-- $Breadcrumbs  --%>
            <div id="headerWrap" <% if $AlternateHeaderStyle %>class="alternateHeaderStyle"<% end_if %>>
                <h1>$Title</h1>
            </div>
            <div class="pageContent">

                <%-- ---------------------------show the page's boxes ------------------------- --%>
                <% if Boxes %>
                <div id="boxes" class="clearFix">
                <% loop Boxes %>
                    <div class="box position-$pos $Colour $FirstLast<% if $MultipleOf(7) %> multipleOf7<% end_if %><% if $MultipleOf(8) %> multipleOf8<% end_if %>">
                        <div class="content">
                            <a href="$LinkPage.Link">
                            <% if $BoxImageID %>
                                <% if $First || $MultipleOf(7) %>
                                <%-- trap first and everyseventh boxes and use different aspect --%>
                                    <img class="boxImage" src="$BoxImage.CroppedImage(1040,520).URL" alt="$Title" title="$Title" />
                                <% else %>
                                    <img class="boxImage" src="$BoxImage.CroppedImage(520,520).URL" alt="$Title" title="$Title" />
                                <% end_if %>

                            <% end_if %>
                            <div class="boxText">
                            <h2>$Title</h2>
                            <div class="boxTextDivider"></div>
                            <p>$Description</p>
                            </div>
                           </a>
                        </div>
                    </div>
                <% end_loop %>
                </div>
                <% end_if %>

                <%-- -----------------------------list children if this is switched on ---------------- --%>
                <% if $ListChildrenAsTiles %>
                <div id="boxes" class="clearFix">
                <% loop $Children %>
                    <div class="box position-$pos $Colour $FirstLast<% if $MultipleOf(7) %> multipleOf7<% end_if %><% if $MultipleOf(8) %> multipleOf8<% end_if %>">
                        <div class="content">
                            <a href="$Link">
                            <% if $TileImageID %>
                                <% if $First || $MultipleOf(7) %>
                                <%-- trap first and everyseventh boxes and use different aspect --%>
                                    <img class="boxImage" src="$TileImage.CroppedImage(1040,520).URL" alt="$Title" title="$Title" />
                                <% else %>
                                    <img class="boxImage" src="$TileImage.CroppedImage(520,520).URL" alt="$Title" title="$Title" />
                                <% end_if %>

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



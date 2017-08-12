    <div id="pagePanel" class="home clearFix">
        <div id="homePageContent">
        <%-- ------------------- slides start --------------------- --%>
        <% if Slides %>
        <div id="sliderBox" class="desktop">
            <div class="content">
                <div class="flexslider loading">
                  <ul class="slides">
                    <% loop Slides %>
                        <li>
                            <img src="$SlideImage.CroppedImage(600,484).URL" alt="$Title" title="$Title" />
                            <p class="flex-caption">
                                <span>$Title</span>$Description
                                <% if $PageID %>
                                    <% with $Page %><a href="$Link">Read more</a><% end_with %>
                                <% end_if %>
                            </p>
                        </li>
                    <% end_loop %>
                  </ul>
                </div>
            </div>
        </div>
        <% end_if %>

        <%-- ------------------- page content -------------------- --%>

        <h1>$Title</h1>
            $Content
        </div>

        <%-- ------------------- boxes start --------------------- --%>

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
    </div>




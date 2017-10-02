<div class="twelve columns">
        <div id="pagePanel" class="clearFix">
            <div class="pageContent">

                <div id="awardsIntro" class="clearFix">
                    <h1>$Title</h1>

                    <% if $PageIntro %>
                        <p class="pageIntro">$PageIntro</p>
                    <% end_if %>
                    <% if $Content %>
                        $Content
                    <% end_if %>
                </div>
                <%-- ---------------------------show the page's boxes ------------------------- --%>
                <% if Boxes %>
                <div id="boxes" class="awards clearFix">
                <% loop Boxes %>
                    <div class="box award $Colour">
                        <div class="content">
                            <a href="$LinkPage.Link">
                            <% if $BoxImageID %>
                                <img class="boxImage" src="$BoxImage.CroppedImage(600,520).URL" alt="$Title" title="$Title" />
                            <% end_if %>
                            <div class="boxText">
                            <h2>$Title</h2>
                            <div class="boxTextDivider"></div>
                            </div>
                            <p class="preadMore">Read more ></p>

                           </a>
                        </div>
                    </div>
                <% end_loop %>
                </div>
                <% end_if %>

                $Form
                $PageComments
            </div>
        </div>
</div>

<% require css("themes/prominent/css/awards.css") %> 


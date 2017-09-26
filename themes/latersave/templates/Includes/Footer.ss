<div id="footer">
    <div class="container">
        <div class="twelve columns footer">
            <div class="left">
                <h2>CONTACT US</h2>
                <p>Call us on:$SiteConfig.Phone<br>Email us on:$SiteConfig.Email</p>
                <hr>
                <h2>CONNECT</h2>
                <div id="socialButtons">
                    <% if $SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank" alt="twitter"><img src ="$ThemeDir/images/twitter.png" /></a><% end_if %>
                    <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/facebook.png" /></a><% end_if %>
                    <% if $SiteConfig.YoutubeLink %><a href="$SiteConfig.YoutubeLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/youtube.png" /></a><% end_if %>
                    <% if $SiteConfig.SnapchatLink %><a href="$SiteConfig.SnapchatLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/snapchat.png" /></a><% end_if %>
                    <% if $SiteConfig.LinkedinLink %><a href="$SiteConfig.LinkedinLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/linkedin.png" /></a><% end_if %>

                </div>
            </div>
            <div class="centre">
                <h2>VISIT US</h2>
                $SiteConfig.Address
            </div>
            <div class="right">
                <a href="$BaseHref" ><img src="$ThemeDir/images/header_logo.png" /></a>
            </div>            
            <div id="colophonFooter">
                <div class="colophon lefty">
                    <p>&copy; $Now.Year Prominent  |  Design:Sqircle Creative  |  Website:Adrian Lynch</p>
                </div>
                <div class="colophon righteous">
                    <ul>
                    <% loop $FooterLinks %>
                        <li><a href="$URL" title="$LinkText">$LinkText</a><% if not $Last %> |<% end_if %></li>
                    <% end_loop %>
                    </ul>
                </div>            
        </div>
    </div>
</div>

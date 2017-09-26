<% if $MyBlogSiblings %>
<div id="subNav" class="nav desktop">
    <h2>Top Stories</h2>
    <ul class="clearFix">
        <% loop $MyBlogSiblings %>
        <li>
            <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
        </li>
        <% end_loop %>
    </ul>
</div>
<% end_if %>





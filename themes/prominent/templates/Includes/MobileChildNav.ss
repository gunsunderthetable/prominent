<% if $Menu(2) %>
<div id="childNav">
   <h2><% if $Parent %>$Parent.Title - also in this section<% else %>$Title - also in this section<% end_if %></h2>
    <ul class="clearFix">
        <% loop Menu(2) %>
        <li class="$FirstLast">
            <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
        </li>
        <% end_loop %>
    </ul>
</div>
<% end_if %>





<div class="box blogbox position-$pos $Colour $FirstLast<% if $MultipleOf(7) %> multipleOf7<% end_if %><% if $MultipleOf(8) %> multipleOf8<% end_if %>">
    <div class="content">
        <a href="$Link">
        <% if $BlogImageID %>
            <% if $First || $MultipleOf(7) %>
            <%-- trap first and everyseventh boxes and use different aspect --%>
                <img class="boxImage" src="$BlogImage.CroppedImage(1040,520).URL" alt="$Title" title="$Title" />
            <% else %>
                <img class="boxImage" src="$BlogImage.CroppedImage(520,520).URL" alt="$Title" title="$Title" />
            <% end_if %>

        <% end_if %>
        <div class="boxText">
        <h2>$Title</h2>
        <div class="boxTextDivider"></div>
        <p>$Content.FirstSentence(html)</p>
        </div>
       </a>
    </div>
</div>
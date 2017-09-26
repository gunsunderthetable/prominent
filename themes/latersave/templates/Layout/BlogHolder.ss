<div class="twelve columns">
    <div id="pagePanel" class="clearFix">
        <div id="headerWrap" <% if $AlternateHeaderStyle %>class="alternateHeaderStyle"<% end_if %>>
            <h1>$Title</h1>
        </div>
        <div class="pageContent">

            <% if SelectedTag %>
                    <h3><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
            <% else_if SelectedDate %>
                    <h3><% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
            <% else_if SelectedAuthor %>
                    <h3><% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
            <% end_if %>


            <% if BlogEntries %>
            <div id="boxes" class="clearFix">
                <% loop BlogEntries %>
                        <% include MyBlogSummary %>
                <% end_loop %>
            <div id="boxes" class="clearFix">
            <% else %>
                    <h2><% _t('BlogHolder_ss.NOENTRIES', 'There are no blog entries') %></h2>
            <% end_if %>


            $Content

            <% include BlogPagination %>                
            $Form
            $PageComments
        </div>
        <div class="rightPanel">
            $MyWidgetArea
            <% include ImageLinks %>
        </div>
    </div>
</div>




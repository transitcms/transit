root = Transit.Template.url

Transit.Template.set("#{root}/core/save-button.jst", '<button class="save btn primary"><i class="icon-ok"></i> <%= text %></button>')

# Nav bars and tabs
Transit.Template.set("#{root}/core/nav-bar.jst", '
  <div class="navbar">
    <div class="navbar-inner">
      <ul class="transit-nav-bar nav"></ul>
    </div>
  </div>
')

Transit.Template.set("#{root}/core/tab-bar.jst", '
  <ul class="transit-tab-bar nav nav-tabs"></ul>
')

Transit.Template.set("#{root}/core/pill-bar.jst", '
  <ul class="transit-pill-bar nav nav-pills"></ul>
')


# Alerts and notifications
Transit.Template.set("#{root}/core/notification.jst", '
  <div class="alert alert-<%= type %>">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <%= message %>
  </div>
')

Transit.Template.set("#{root}/core/modal.jst", '
  <div class="modal fade">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h3><%= title %></h3>
    </div>
  <div class="modal-body">
    <%= content %>
  </div>
  <div class="modal-footer">
    <% _.each(buttons, function(button){ %>
      <a href="#" class="btn <%= button.css %>" data-action="<%= button.action %>"><%= button.text %></a>
    <% }); %>
  </div>
</div>
')

# Misc elements
Transit.Template.set("#{root}/core/progress-bar.jst", '
  <div class="progress progress-striped active">
    <div class="bar" style="width:<%= percent %>"></div>
  </div>
')

# Assets
Transit.Template.set("#{root}/core/assets/image.jst", '
  <img src="<%= asset.get("url") %>" />
  <a href="#" class="icon-remove" data-action="remove"></a>
')

Transit.Template.set("#{root}/core/assets/file.jst", '
  <a href="<%= asset.get("url") %>"><%= asset.get("filename") %></a>
  <a href="#" class="icon-remove" data-action="remove"></a>
')

Transit.Template.set("#{root}/core/assets/uploader.jst", '')
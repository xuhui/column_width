class WidthHookListener < Redmine::Hook::ViewListener
  render_on :view_issues_index_bottom, :partial => 'projects/width'
end

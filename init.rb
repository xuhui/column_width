require_dependency 'width_hook_listener'

ActionDispatch::Callbacks.to_prepare do

  require_dependency 'projects_helper'
  require_dependency 'projects_controller'
  ProjectsHelper.send(:include, CwProjectSettingModule) unless ProjectsHelper.included_modules.include?(CwProjectSettingModule)
  ProjectsController.send(:include, CwProjectsControllerModule) unless ProjectsController.included_modules.include?(CwProjectsControllerModule)
end

Redmine::Plugin.register :column_width do
  name 'Alter Column Width by Project'
  author 'Zhou Xuhui'
  description 'Alter the column width for issue list by project'
  version '0.0.2'
  url 'https://github.com/xuhui/column_width'
  author_url 'https://github.com/xuhui'
  permission :column_width, {:projects => :width}, public: true # :require => :member
end


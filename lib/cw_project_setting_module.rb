module CwProjectSettingModule

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
       alias_method_chain :project_settings_tabs, :cw
    end
  end

  module InstanceMethods
    def project_settings_tabs_with_cw
      tabs = project_settings_tabs_without_cw
      tabs << {:name => 'width', :action => :edit_project, :partial => 'projects/settings/column_width', :label => :label_issue_column_width}
      tabs.select {|tab| User.current.allowed_to?(tab[:action], @project)}
    end
  end

end



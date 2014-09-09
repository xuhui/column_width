module CwProjectsControllerModule

  def self.included(base)
    base.send(:include, InstanceMethods)
  end

  module InstanceMethods
    def width
      @project.cw_index1 = params["cw_index1"].to_i
      @project.cw_value1 = params["cw_value1"].to_i
      @project.save
      flash[:notice] = l(:notice_successful_update)
      redirect_to settings_project_path(@project, :tab => 'width')
    end
  end

end




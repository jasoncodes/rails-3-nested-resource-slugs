require 'spec_helper'

describe ProjectsController do
  describe "routing" do
    it '/accounts/:account_id/projects to Projects#index' do
      path = account_projects_path 'foocorp'
      path.should == '/accounts/foocorp/projects'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'index',
        :account_id => 'foocorp'
      )
    end

    it '/accounts/:account_id/projects/new to Projects#new' do
      path = new_account_project_path('foocorp')
      path.should == '/accounts/foocorp/projects/new'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'new',
        :account_id => 'foocorp'
      )
    end

    it '/accounts/:account_id/projects/:project_id to Projects#show' do
      path = account_project_path 'foocorp', 'widgets'
      path.should == '/accounts/foocorp/projects/widgets'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'show',
        :account_id => 'foocorp',
        :id => 'widgets'
      )
    end

    it '/accounts/:account_id/projects/:project_id/edit to Projects#edit' do
      path = edit_account_project_path 'foocorp', 'widgets'
      path.should == '/accounts/foocorp/projects/widgets/edit'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'edit',
        :account_id => 'foocorp',
        :id => 'widgets'
      )
    end
  end
end

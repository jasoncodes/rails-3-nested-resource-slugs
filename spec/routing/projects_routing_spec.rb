require 'spec_helper'

describe ProjectsController do
  describe "routing" do
    it '/:account_id/new to Projects#new' do
      path = new_account_project_path('foocorp')
      path.should == '/foocorp/new'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'new',
        :account_id => 'foocorp'
      )
    end

    it '/:account_id/:project_id to Projects#show' do
      path = account_project_path 'foocorp', 'widgets'
      path.should == '/foocorp/widgets'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'show',
        :account_id => 'foocorp',
        :id => 'widgets'
      )
    end

    it '/:account_id/:project_id/edit to Projects#edit' do
      path = edit_account_project_path 'foocorp', 'widgets'
      path.should == '/foocorp/widgets/edit'
      { :get => path }.should route_to(
        :controller => 'projects',
        :action => 'edit',
        :account_id => 'foocorp',
        :id => 'widgets'
      )
    end
  end
end

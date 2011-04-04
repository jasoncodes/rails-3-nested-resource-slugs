require 'spec_helper'

describe AccountsController do
  describe "routing" do
    it '/accounts to Accounts#index' do
      path = accounts_path
      path.should == '/accounts'
      { :get => path }.should route_to(
        :controller => 'accounts',
        :action => 'index'
      )
    end

    it '/accounts/new to Account#new' do
      path = new_account_path
      path.should == '/accounts/new'
      { :get => path }.should route_to(
        :controller => 'accounts',
        :action => 'new'
      )
    end

    it '/accounts/:account_id to Account#show' do
      path = account_path 'foocorp'
      path.should == '/accounts/foocorp'
      { :get => path }.should route_to(
        :controller => 'accounts',
        :action => 'show',
        :id => 'foocorp'
      )
    end

    it '/accounts/:account_id/edit to Account#edit' do
      path = edit_account_path 'foocorp'
      path.should == '/accounts/foocorp/edit'
      { :get => path }.should route_to(
        :controller => 'accounts',
        :action => 'edit',
        :id => 'foocorp'
      )
    end
  end
end

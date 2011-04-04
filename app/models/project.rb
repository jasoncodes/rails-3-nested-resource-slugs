class Project < ActiveRecord::Base
  belongs_to :account
  has_friendly_id :name, :use_slug => true, :scope => :account_id
end

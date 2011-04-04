class Account < ActiveRecord::Base
  has_many :projects
  has_friendly_id :name, :use_slug => true
end

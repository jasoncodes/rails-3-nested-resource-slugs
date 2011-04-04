class Account < ActiveRecord::Base
  has_many :projects
end

class ProjectsController < ApplicationController
  inherit_resources
  belongs_to :account
end

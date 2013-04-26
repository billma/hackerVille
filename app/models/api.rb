class Api < ActiveRecord::Base
  attr_accessible :company, :description, :name, :website
end

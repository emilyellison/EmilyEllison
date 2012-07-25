class Project < ActiveRecord::Base
  attr_accessible :description, :functionality, :github, :image, :title, :tools, :website, :when
end

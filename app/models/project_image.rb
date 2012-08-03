class ProjectImage < ActiveRecord::Base
  attr_accessible :image, :project_id
  
  belongs_to :project
  
  validates :image, presence: true
  validates :project_id, presence: true
end

class RemoveVideoFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :video
      end

  def down
    add_column :projects, :video, :string
  end
end

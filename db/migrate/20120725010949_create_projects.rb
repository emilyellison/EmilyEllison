class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :when
      t.string :website
      t.string :github
      t.string :image
      t.text :tools
      t.text :functionality

      t.timestamps
    end
  end
end

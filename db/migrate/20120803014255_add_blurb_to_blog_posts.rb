class AddBlurbToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :blurb, :text
  end
end

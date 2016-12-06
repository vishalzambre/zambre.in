# Add Short Description To Posts
class AddShortDescriptionToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :short_description, :text
  end
end

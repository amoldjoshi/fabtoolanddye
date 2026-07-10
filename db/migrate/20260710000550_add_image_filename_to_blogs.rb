class AddImageFilenameToBlogs < ActiveRecord::Migration[8.1]
  def change
    add_column :blogs, :image_filename, :string
  end
end

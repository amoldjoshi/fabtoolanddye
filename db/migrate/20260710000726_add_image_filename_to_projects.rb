class AddImageFilenameToProjects < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :image_filename, :string
  end
end

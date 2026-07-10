class AddImageFilenameToServices < ActiveRecord::Migration[8.1]
  def change
    add_column :services, :image_filename, :string
  end
end

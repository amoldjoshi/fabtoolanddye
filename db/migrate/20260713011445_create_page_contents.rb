class CreatePageContents < ActiveRecord::Migration[8.1]
  def change
    create_table :page_contents do |t|
      t.string :slug
      t.string :title1
      t.text :body1
      t.string :title2
      t.text :body2
      t.string :image_filename

      t.timestamps
    end
  end
end

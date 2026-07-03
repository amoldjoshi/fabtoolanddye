class CreateBlogs < ActiveRecord::Migration[8.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :headingone
      t.text :bodyone
      t.text :headingtwo
      t.text :bodytwo
      t.text :headingthree
      t.text :bodythree
      t.datetime :published_at
      t.string :slug

      t.timestamps
    end
  end
end

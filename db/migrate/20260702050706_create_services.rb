class CreateServices < ActiveRecord::Migration[8.1]
  def change
    create_table :services do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.string :slug

      t.timestamps
    end
  end
end

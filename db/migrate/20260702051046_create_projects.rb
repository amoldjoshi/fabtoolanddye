class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :customer
      t.text :description
      t.date :project_data
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end

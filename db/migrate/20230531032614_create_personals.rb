class CreatePersonals < ActiveRecord::Migration[7.0]
  def change
    create_table :personals do |t|
      t.text :address
      t.string :photo
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

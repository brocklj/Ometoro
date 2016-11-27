class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :text
      t.references :courses, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

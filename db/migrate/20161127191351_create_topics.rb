class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :text
      t.references :coursesedit, index: true, foreign_key: true

      t.timestamps null: false
    end

    create_table :topics_courses, id: false do |t|
      t.belongs_to :topic, index: true
      t.belongs_to :course, index: true
    end
  end
end

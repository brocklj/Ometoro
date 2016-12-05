class CreateTagAssigments < ActiveRecord::Migration
  def change
    create_table :tag_assigments do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :test

      t.timestamps null: false
    end
  end
end

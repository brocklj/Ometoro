class AddBodyToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :body, :text
  end
end

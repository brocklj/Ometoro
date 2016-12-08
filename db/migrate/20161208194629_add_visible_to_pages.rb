class AddVisibleToPages < ActiveRecord::Migration
  def change
    add_column :pages, :visible, :bolean
  end
end

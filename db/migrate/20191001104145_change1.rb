class Change1 < ActiveRecord::Migration[5.2]
  def change
    change_column_null :collections, :category_name, false
  end
end

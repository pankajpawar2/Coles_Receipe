class Change < ActiveRecord::Migration[5.2]
  def change
    change_column_null :collections, :image_url, true
  end
end

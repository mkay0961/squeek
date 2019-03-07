class AddAttributesToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :image, :string
    add_column :items, :keywords, :string
  end
end

class CreateUserItems < ActiveRecord::Migration[5.2]
  def change
    create_table :user_items do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :item, foreign_key: true
      t.string :review
      t.boolean :current, default: true

      t.timestamps
    end
  end
end

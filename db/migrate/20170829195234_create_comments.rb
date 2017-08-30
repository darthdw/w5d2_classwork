class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.string :url
      t.string :content
      t.integer :user_id, null: false
      t.integer :sub_id, null: false
      t.timestamps
    end
  end
end

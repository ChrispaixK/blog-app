class CreateTableUser < ActiveRecord::Migration[7.0]
  def change
    create_table :table_users do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.integer :posts_counter
      t.timestamps
    end
  end
end

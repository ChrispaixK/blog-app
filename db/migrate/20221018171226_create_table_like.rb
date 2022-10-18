class CreateTableLike < ActiveRecord::Migration[7.0]
  def change
    create_table :table_likes do |t|
      t.integer :author_id
      t.integer :post_id
      
      t.timestamps
    end
  end
end

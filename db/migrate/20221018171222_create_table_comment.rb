class CreateTableComment < ActiveRecord::Migration[7.0]
  def change
    create_table :table_comments do |t|
      t.integer :author_id
      t.integer :post_id
      t.string :text

      t.timestamps
    end
  end
end

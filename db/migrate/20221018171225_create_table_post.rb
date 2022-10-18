class CreateTablePost < ActiveRecord::Migration[7.0]
  def change
    create_table :table_posts do |t|

      t.timestamps
    end
  end
end

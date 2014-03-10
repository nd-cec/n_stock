class CreateNStockItems < ActiveRecord::Migration
  def change
    create_table :n_stock_items do |t|
      t.string :file_name
      t.string :content_type
      t.integer :file_size

      t.timestamps
    end
  end
end

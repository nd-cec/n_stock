class AddUserIdToNStockItems < ActiveRecord::Migration
  def change
    add_column :n_stock_items, :user_id, :integer
  end
end


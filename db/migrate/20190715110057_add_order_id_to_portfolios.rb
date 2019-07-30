class AddOrderIdToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :order_id, :integer, default: 0
  end
end

class UpdateTable < ActiveRecord::Migration
  def change
    add_column :assets, :name, :string
    add_column :assets, :price, :string
    add_column :assets, :api_url, :string
    add_column :assets, :daily_change_percentage, :integer
    add_column :assets, :weekly_change_percentage, :integer
    add_column :assets, :total_supply, :integer
    add_column :assets, :circulating_supply, :integer
  end
end

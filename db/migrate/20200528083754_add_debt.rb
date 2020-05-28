class AddDebt < ActiveRecord::Migration
  def change
    add_column :assets, :total_debt, :integer
  end
end

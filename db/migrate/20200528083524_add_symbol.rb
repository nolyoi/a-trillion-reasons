class AddSymbol < ActiveRecord::Migration
  def change
    add_column :assets, :symbol, :integer
  end
end

class AddPriceToOProduct < ActiveRecord::Migration
  def self.up
    add_column :o_products, :price, :decimal,
    :precision => 8, :scale => 2, :default => 0
  end

  def self.down
    remove_column :o_products, :price
  end
end

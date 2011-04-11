class CreateOProducts < ActiveRecord::Migration
  def self.up
    create_table :o_products do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :o_products
  end
end

class OProduct < ActiveRecord::Base
  validates :title, :description, :image_url, :price, :presence => true
  validates :price, :numericality => true
  validate :price_must_be_at_least_a_penny
  validates :title, :uniqueness => true
  
  def self.find_products_for_sale
    find(:all, :order => "price" )
  end
  
protected
  def price_must_be_at_least_a_penny
    errors.add(:price, 'should be at least 0.01' ) if price.nil? || price < 0.01
  end

end

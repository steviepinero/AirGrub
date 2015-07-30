class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price_in_cents, numericality: { only_integer: true,
                                             greater_than: 0 }
<<<<<<< HEAD
  has_many :reviews

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    format('%.2f', price_in_dollars)
  end
=======
  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    format("%.2f", price_in_dollars)
  end                                           

>>>>>>> f9b6481ee0580c15c17ae7f386bba64c71c9aa09
end

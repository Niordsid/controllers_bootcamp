require 'faker'

class Product < ApplicationRecord

  def generate_bar_code
    Faker::Barcode.ean_with_composite_symbology
  end

  def calculate_tax
    price * 0.19
  end

  def calculate_price_with_tax
    calculate_tax + price
  end
end

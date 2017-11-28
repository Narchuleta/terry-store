class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  
  def subtotal
    line_items.to_a.sum do |item|
      item.total
  end
  
  end
end

# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

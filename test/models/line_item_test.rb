require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  product    :string
#  cart_id    :integer
#  quanity    :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_line_items_on_cart_id  (cart_id)
#

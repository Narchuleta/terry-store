require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get shoe" do
    get orders_shoe_url
    assert_response :success
  end

end

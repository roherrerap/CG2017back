require 'test_helper'

class ProductquoteunregisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productquoteunregi = productquoteunregis(:one)
  end

  test "should get index" do
    get productquoteunregis_url, as: :json
    assert_response :success
  end

  test "should create productquoteunregi" do
    assert_difference('Productquoteunregi.count') do
      post productquoteunregis_url, params: { productquoteunregi: { Product_id: @productquoteunregi.Product_id, param1: @productquoteunregi.param1, param2: @productquoteunregi.param2, param3: @productquoteunregi.param3, param4: @productquoteunregi.param4, param5: @productquoteunregi.param5, quantity: @productquoteunregi.quantity, quoteunregistered_id: @productquoteunregi.quoteunregistered_id } }, as: :json
    end

    assert_response 201
  end

  test "should show productquoteunregi" do
    get productquoteunregi_url(@productquoteunregi), as: :json
    assert_response :success
  end

  test "should update productquoteunregi" do
    patch productquoteunregi_url(@productquoteunregi), params: { productquoteunregi: { Product_id: @productquoteunregi.Product_id, param1: @productquoteunregi.param1, param2: @productquoteunregi.param2, param3: @productquoteunregi.param3, param4: @productquoteunregi.param4, param5: @productquoteunregi.param5, quantity: @productquoteunregi.quantity, quoteunregistered_id: @productquoteunregi.quoteunregistered_id } }, as: :json
    assert_response 200
  end

  test "should destroy productquoteunregi" do
    assert_difference('Productquoteunregi.count', -1) do
      delete productquoteunregi_url(@productquoteunregi), as: :json
    end

    assert_response 204
  end
end

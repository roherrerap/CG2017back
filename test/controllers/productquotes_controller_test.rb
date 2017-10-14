require 'test_helper'

class ProductquotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productquote = productquotes(:one)
  end

  test "should get index" do
    get productquotes_url, as: :json
    assert_response :success
  end

  test "should create productquote" do
    assert_difference('Productquote.count') do
      post productquotes_url, params: { productquote: { Product_id: @productquote.Product_id, Quote_id: @productquote.Quote_id, param1: @productquote.param1, param2: @productquote.param2, param3: @productquote.param3, param4: @productquote.param4, param5: @productquote.param5, quantity: @productquote.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show productquote" do
    get productquote_url(@productquote), as: :json
    assert_response :success
  end

  test "should update productquote" do
    patch productquote_url(@productquote), params: { productquote: { Product_id: @productquote.Product_id, Quote_id: @productquote.Quote_id, param1: @productquote.param1, param2: @productquote.param2, param3: @productquote.param3, param4: @productquote.param4, param5: @productquote.param5, quantity: @productquote.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy productquote" do
    assert_difference('Productquote.count', -1) do
      delete productquote_url(@productquote), as: :json
    end

    assert_response 204
  end
end

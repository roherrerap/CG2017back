require 'test_helper'

class QuoteunregisteredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quoteunregistered = quoteunregistereds(:one)
  end

  test "should get index" do
    get quoteunregistereds_url, as: :json
    assert_response :success
  end

  test "should create quoteunregistered" do
    assert_difference('Quoteunregistered.count') do
      post quoteunregistereds_url, params: { quoteunregistered: { email: @quoteunregistered.email, name: @quoteunregistered.name } }, as: :json
    end

    assert_response 201
  end

  test "should show quoteunregistered" do
    get quoteunregistered_url(@quoteunregistered), as: :json
    assert_response :success
  end

  test "should update quoteunregistered" do
    patch quoteunregistered_url(@quoteunregistered), params: { quoteunregistered: { email: @quoteunregistered.email, name: @quoteunregistered.name } }, as: :json
    assert_response 200
  end

  test "should destroy quoteunregistered" do
    assert_difference('Quoteunregistered.count', -1) do
      delete quoteunregistered_url(@quoteunregistered), as: :json
    end

    assert_response 204
  end
end

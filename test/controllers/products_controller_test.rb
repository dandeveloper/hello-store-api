require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @product = products(:one)
    @token = generate_api_key
  end

  test "should get index" do
    get api_products_url, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response :success
  end

  # test "should create product" do
  #   assert_difference('Product.count') do
  #     post api_products_url, params: { product: { best_price: @product.best_price, description: @product.description, name: @product.name, price: @product.price, quantity: @product.quantity, category_id: @product.category_id, short_description: @product.short_description } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
  #   end
  #
  #   assert_response 201
  # end

  test "should show product" do
    get api_product_url(@product), as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response :success
  end

  # test "should update product" do
  #   patch api_product_url(@product), params: { product: { best_price: @product.best_price, description: @product.description, name: @product.name, price: @product.price, quantity: @product.quantity, category_id: @product.category_id, short_description: @product.short_description } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
  #   assert_response 200
  # end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete api_product_url(@product), as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    end

    assert_response 204
  end
end

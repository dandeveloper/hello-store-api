require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @product_one = products(:one)
    @product_two = products(:one)
    @token = generate_api_key
    Category.create(name: "Categoria Teste", description: "Descrição da categoria teste")
  end

  test "should get index" do
    get api_products_url, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post api_products_url, params: { product: { name: @product_one.name, description: @product_one.description, short_description: @product_one.short_description, price: @product_one.price, best_price: @product_one.best_price, quantity: @product_one.quantity, category_id: Category.first.id } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    end
  
    assert_response 201
  end

  test "should show product" do
    get api_product_url(@product_one), as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response :success
  end

  # test "should update product" do
  #   patch api_products_url(@product_one), params: { product: { name: @product_two.name, description: @product_two.description, short_description: @product_two.short_description, price: @product_two.price, best_price: @product_two.best_price, quantity: @product_two.quantity, category_id: Category.first.id } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
  #   assert_response 200
  # end

  test "should update product" do
    patch api_product_url(@product_one), params: { product: { name: @product_one.name, description: @product_one.description, short_description: @product_one.short_description, price: @product_one.price, best_price: @product_one.best_price, quantity: @product_one.quantity } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response 200
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete api_product_url(@product_one), as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    end

    assert_response 204
  end
end

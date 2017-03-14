require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @category = categories(:one)
    @token = generate_api_key
  end

  test "should get index" do
    get api_categories_url, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post api_categories_url, params: { category: { description: @category.description, name: @category.name } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    end

    assert_response 201
  end

  test "should show category" do
    get api_category_url(@category), as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response :success
  end

  test "should update category" do
    patch api_category_url(@category), params: { category: { description: @category.description, name: @category.name } }, as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    assert_response 200
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete api_category_url(@category), as: :json, headers: { "Authorization" => "Token token=#{@token}" }
    end

    assert_response 204
  end
end

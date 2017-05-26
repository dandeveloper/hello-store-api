require 'rails_helper'

RSpec.describe "Products", type: :request do

  before(:each) do
    @token = generate_api_key
    Category.create(name: "Categoria Teste", description: "Descrição da categoria teste")
    @headers = { "Content-Type" => "multipart/form-data", "Authorization" => "Token token=#{@token}" }
  end

  describe "GET /products" do

    it "shows all products" do
      get api_products_path, params: nil, headers: @headers
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /products" do
    it 'creates a product using POST' do
      product = FactoryGirl.attributes_for(:product)
      post api_products_path, params: product, headers: @headers
      expect(response).to have_http_status(201)
    end
  end
end

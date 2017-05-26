include ActionDispatch::TestProcess

FactoryGirl.define do

  factory :product do
    name "Product One"
    description "Product One Long Description"
    short_description "Product One Short Description"
    price 9.99
    best_price 10.99
    quantity 10
    # image { fixture_file_upload("#{Rails.root}/spec/support/fixtures/example.png", "image/png") }
  end

end

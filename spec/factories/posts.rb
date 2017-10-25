FactoryGirl.define do
  factory :post do
    title 'Lorem ipsum'
    body 'Lorem ipsum'
    image File.new(File.join(Rails.root + 'spec/fixtures/image.jpg'))
    association :author
  end
end

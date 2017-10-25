FactoryGirl.define do
  factory :author do
    name 'User'
    position 'example'
    avatar File.open(File.join(Rails.root, '/spec/fixtures/avatar-default.png'))
  end
end

require 'spec_helper'

describe Post do
	it 'New post' do
		@post = FactoryGirl.build(:post)
		expect(@post.title).to eq("Lorem ipsum")
    expect(@post.body).to eq("Lorem ipsum")
  end
end
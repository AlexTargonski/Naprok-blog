require 'spec_helper'

describe Author do
	it 'New author' do
		@author = FactoryGirl.build(:author)
		expect(@author.name).to eq("User")
    expect(@author.position).to eq("example")
  end
end
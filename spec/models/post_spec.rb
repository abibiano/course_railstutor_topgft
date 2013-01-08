require 'spec_helper'

describe Post do

  it "has a valid factory" do
  	FactoryGirl.create(:post).should be_valid
  end
  it "is invalid without a URL" do
  	FactoryGirl.build(:post, url: nil).should_not be_valid
  end

  it "is invalid without a title" do
    FactoryGirl.build(:post, title: nil).should_not be_valid
  end
  it "is invalid with a title length < 2" do
		FactoryGirl.build(:post, title: "1").should_not be_valid
	end

end
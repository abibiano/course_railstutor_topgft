require 'spec_helper'

describe "Posts" do
  describe "Home page" do
		it "should have the content 'Top Gifts List'" do
      visit '/'
      page.should have_selector('h1', text: 'Top Gifts List')
    end
  end
end

require 'spec_helper'

describe Post do

  before { @post = Post.new(url: "http://www.amazon.com", title: "kindle") }

  subject { @post }

  it { should respond_to(:url) }
  it { should respond_to(:title) }
end
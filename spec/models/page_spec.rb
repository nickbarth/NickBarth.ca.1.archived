require 'spec_helper'

describe Page do
  it "should initialized a valid model" do
    page = Page.send :new
    page.should respond_to :name
    page.should respond_to :body
  end
end

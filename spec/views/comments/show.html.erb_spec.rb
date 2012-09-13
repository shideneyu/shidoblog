require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :author_email => "Author Email",
      :author_name => "Author Name",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author Email/)
    rendered.should match(/Author Name/)
    rendered.should match(/MyText/)
  end
end

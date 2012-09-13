require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :author_email => "MyString",
      :author_name => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_author_email", :name => "comment[author_email]"
      assert_select "input#comment_author_name", :name => "comment[author_name]"
      assert_select "textarea#comment_content", :name => "comment[content]"
    end
  end
end

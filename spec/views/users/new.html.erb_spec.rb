require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyText",
      :last_name => "MyText",
      :username => "MyText",
      :password_digest => "MyText"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "textarea#user_first_name[name=?]", "user[first_name]"

      assert_select "textarea#user_last_name[name=?]", "user[last_name]"

      assert_select "textarea#user_username[name=?]", "user[username]"

      assert_select "textarea#user_password_digest[name=?]", "user[password_digest]"
    end
  end
end

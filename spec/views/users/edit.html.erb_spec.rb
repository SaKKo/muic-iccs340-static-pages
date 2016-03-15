require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyText",
      :last_name => "MyText",
      :username => "MyText",
      :password_digest => "MyText"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "textarea#user_first_name[name=?]", "user[first_name]"

      assert_select "textarea#user_last_name[name=?]", "user[last_name]"

      assert_select "textarea#user_username[name=?]", "user[username]"

      assert_select "textarea#user_password_digest[name=?]", "user[password_digest]"
    end
  end
end

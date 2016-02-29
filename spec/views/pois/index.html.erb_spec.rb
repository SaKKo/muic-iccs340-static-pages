require 'rails_helper'

RSpec.describe "pois/index", type: :view do
  before(:each) do
    assign(:pois, [
      Poi.create!(
        :name => "MyText",
        :latitude => "9.99",
        :longitude => "9.99"
      ),
      Poi.create!(
        :name => "MyText",
        :latitude => "9.99",
        :longitude => "9.99"
      )
    ])
  end

  it "renders a list of pois" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

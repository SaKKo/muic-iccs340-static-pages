require 'rails_helper'

RSpec.describe "pois/new", type: :view do
  before(:each) do
    assign(:poi, Poi.new(
      :name => "MyText",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders new poi form" do
    render

    assert_select "form[action=?][method=?]", pois_path, "post" do

      assert_select "textarea#poi_name[name=?]", "poi[name]"

      assert_select "input#poi_latitude[name=?]", "poi[latitude]"

      assert_select "input#poi_longitude[name=?]", "poi[longitude]"
    end
  end
end

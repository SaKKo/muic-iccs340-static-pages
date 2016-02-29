require 'rails_helper'

RSpec.describe "pois/edit", type: :view do
  before(:each) do
    @poi = assign(:poi, Poi.create!(
      :name => "MyText",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders the edit poi form" do
    render

    assert_select "form[action=?][method=?]", poi_path(@poi), "post" do

      assert_select "textarea#poi_name[name=?]", "poi[name]"

      assert_select "input#poi_latitude[name=?]", "poi[latitude]"

      assert_select "input#poi_longitude[name=?]", "poi[longitude]"
    end
  end
end

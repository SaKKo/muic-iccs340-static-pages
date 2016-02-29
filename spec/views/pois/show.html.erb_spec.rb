require 'rails_helper'

RSpec.describe "pois/show", type: :view do
  before(:each) do
    @poi = assign(:poi, Poi.create!(
      :name => "MyText",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end

require 'rails_helper'

RSpec.describe "static_pages/contact.html.erb", type: :view do
  it "displays all controller name and action name" do
    render

    expect(rendered).to match(/StaticPages/)
    expect(rendered).to match(/contact/)

  end
end

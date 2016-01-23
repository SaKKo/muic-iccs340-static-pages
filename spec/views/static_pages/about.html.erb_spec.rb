require 'rails_helper'

RSpec.describe "static_pages/about.html.erb", type: :view do
  it "displays all controller name and action name" do
    render

    expect(rendered).to match(/StaticPages/)
    expect(rendered).to match(/about/)
    expect(rendered).to have_selector('table.table')

  end
end

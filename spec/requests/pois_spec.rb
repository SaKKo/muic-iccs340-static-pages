require 'rails_helper'

RSpec.describe "Pois", type: :request do
  describe "GET /pois" do
    it "works! (now write some real specs)" do
      get pois_path
      expect(response).to have_http_status(200)
    end
  end
end

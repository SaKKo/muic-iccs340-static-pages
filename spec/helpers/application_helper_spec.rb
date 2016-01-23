require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the StaticPagesHelper. For example:
#
# describe StaticPagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe "#header_active" do
    it "returns active" do
      params = {controller: 'static_pages', action: 'home'}
      allow(helper).to receive(:params) {params}
      expect(helper.header_active('static_pages','home')).to eql 'active'
    end

    it "returns empty" do
      params = {controller: 'static_pages', action: 'home'}
      allow(helper).to receive(:params) {params}
      expect(helper.header_active('static_pages','contact')).to eql ''
    end

    it "returns empty" do
      params = {controller: 'static_pages', action: 'home'}
      allow(helper).to receive(:params) {params}
      expect(helper.header_active('static_pages','')).to eql ''
    end

    it "returns empty if action.nil?" do
      params = {controller: 'static_pages', action: 'home'}
      allow(helper).to receive(:params) {params}
      expect(helper.header_active('static_pages',nil)).to eql ''
    end

    it "returns empty if controller.nil?" do
      params = {controller: 'static_pages', action: 'home'}
      allow(helper).to receive(:params) {params}
      expect(helper.header_active(nil,'')).to eql ''
    end

    it "returns empty if controller.nil? && action.nil?" do
      params = {controller: 'static_pages', action: 'home'}
      allow(helper).to receive(:params) {params}
      expect(helper.header_active(nil,nil)).to eql ''
    end

  end
end

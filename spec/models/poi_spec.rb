require 'rails_helper'

RSpec.describe Poi, type: :model do

  before(:each) do
    @poi = Poi.new(name: 'test', latitude: 0, longitude: 0)
  end

  it "name != blank" do
    @poi.name = nil
    expect(@poi.save).to be(false)
    @poi.name = "" # empty
    expect(@poi.save).to be(false)
    @poi.name = "      " # blank
    expect(@poi.save).to be(false)
    @poi.name = "test" # valid
    expect(@poi.save).to be(true)
  end

  it "valid latitude" do
    @poi.latitude = -91
    expect(@poi.save).to be(false)
    @poi.latitude = 91
    expect(@poi.save).to be(false)
    @poi.latitude = 0
    expect(@poi.save).to be(true)
  end

  it "valid longitude" do
    @poi.longitude = -181
    expect(@poi.save).to be(false)
    @poi.longitude = 181
    expect(@poi.save).to be(false)
    @poi.longitude = 0
    expect(@poi.save).to be(true)
  end

  it "valid lat_lng_string" do
    expect(@poi.lat_lng_string).to eq("0.0, 0.0")
  end


















end

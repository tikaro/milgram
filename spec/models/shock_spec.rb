require 'rails_helper'

RSpec.describe Shock, type: :model do
  it "should create a new instance given valid attributes" do
    FactoryGirl.create(:shock)
  end

  it "does not allow a strength greater than 1" do
    shock = FactoryGirl.build(:shock, strength: 0)
    shock. valid?

    expect(shock.errors[:strength].size).to eq(1)
  end

  it "does not allow a strength greater than 255" do
    shock = FactoryGirl.build(:shock, strength: 256)
    shock. valid?

    expect(shock.errors[:strength].size).to eq(1)
  end
end

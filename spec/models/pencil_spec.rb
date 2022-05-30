require 'rails_helper'

RSpec.describe Pencil, type: :model do
  subject {Pencil.new}

  it "should create a pencil" do
    expect(subject).to be_a(Pencil)
  end

  it "should have a color attribute that will default to nil" do
    expect(subject.color).to be(nil)
  end

  describe "#set_color" do
    before(:each) do
      subject.set_color("red")
    end

    it "should have a color attribute that can be set" do
      expect(subject.color).to eq("red")
    end
  end
end

require 'rails_helper'

RSpec.describe TotalOccurrencesCalculator do
  describe ".total_inc_dec" do
    it "returns the correct number of increasing and decreasing numbers for x=0" do
      expect(TotalOccurrencesCalculator.total_inc_dec(0)).to eq(1)
    end

    it "returns the correct number of increasing and decreasing numbers for x=1" do
      expect(TotalOccurrencesCalculator.total_inc_dec(1)).to eq(10)
    end

    it "returns the correct number of increasing and decreasing numbers for x=2" do
      expect(TotalOccurrencesCalculator.total_inc_dec(2)).to eq(100)
    end

    it "returns the correct number of increasing and decreasing numbers for x=3" do
      expect(TotalOccurrencesCalculator.total_inc_dec(3)).to eq(475)
    end

    it "returns the correct number of increasing and decreasing numbers for x=4" do
      expect(TotalOccurrencesCalculator.total_inc_dec(4)).to eq(1675)
    end

    it "returns the correct number of increasing and decreasing numbers for x=5" do
      expect(TotalOccurrencesCalculator.total_inc_dec(5)).to eq(4954)
    end

    it "returns the correct number of increasing and decreasing numbers for x=6" do
      expect(TotalOccurrencesCalculator.total_inc_dec(6)).to eq(12952)
    end

    it "returns the correct number of increasing and decreasing numbers for x=7" do
      expect(TotalOccurrencesCalculator.total_inc_dec(7)).to eq(30817)
    end

    it "returns the correct number of increasing and decreasing numbers for x=8" do
      expect(TotalOccurrencesCalculator.total_inc_dec(8)).to eq(67987)
    end

    it "returns the correct number of increasing and decreasing numbers for x=9" do
      expect(TotalOccurrencesCalculator.total_inc_dec(9)).to eq(140907)
    end

    it "returns the correct number of increasing and decreasing numbers for x=10" do
      expect(TotalOccurrencesCalculator.total_inc_dec(10)).to eq(277033)
    end
    
    # Edge case: Negative values
    it "returns 1 for negative values of x" do
      expect(TotalOccurrencesCalculator.total_inc_dec(-1)).to eq(1)
      expect(TotalOccurrencesCalculator.total_inc_dec(-5)).to eq(1)
    end
  end
end

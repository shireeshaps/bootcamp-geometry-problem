require "spec_helper"

describe Geometry::Point do
  describe "#coordinates" do
    it "should NOT Modify the abscissa and ordinate when given coordinates are (2,4) " do
      point = Geometry::Point.new(2,4)
      expect(point.x_point).to eq(2)
      expect(point.y_point).to eq(4)
    end
  end
end
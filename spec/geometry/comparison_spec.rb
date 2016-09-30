require 'spec_helper'

describe Geometry::Comparison do
  describe '#compare_points' do
    # it 'should be true when both  abscissas and ordinates are equal' do
    #   compare = Geometry::Comparison.new(1, 1 ,1 ,1)
    #   expect(compare.compare_points).to eq(true)
    # end

    it 'should be true when both  abscissas and ordinates  equal' do
      point1 = Geometry::Comparison.new(1, 2)
      point2 = Geometry::Comparison.new(1, 2)
      expect(point1 == point2).to eq(true)
    end

    it 'should be false when both  abscissas and ordinates are not equal' do
      point1 = Geometry::Comparison.new(1, 2)
      point2 = Geometry::Comparison.new(1, 3)
      expect(point1 == point2).to eq(false)
    end

    it 'should return true for (Reflexive property) given one point'do
      point1 = Geometry::Comparison.new(1, 1)
      expect(point1 == point1).to eq(true)
    end

    it 'should return true for symmetric property  for  given two points 'do
      point1 = Geometry::Comparison.new(1, 1)
      point2 = Geometry::Comparison.new(1, 1)
      expect(point1 == point2 && point2 == point1).to eq(true)
    end

    it 'should return false when given a NIL point ' do
      point1 = Geometry::Comparison.new(1, 1)
      point2 = Geometry::Comparison.new(nil,nil)
      expect{
        point1 == point2
      }.to raise_error(NoMethodError)
    end

  end
end
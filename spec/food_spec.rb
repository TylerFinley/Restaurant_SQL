require('spec_helper')

describe(Food) do
  describe('#type') do
    it('returns the type of food') do
      test_food = Food.new({:type => 'broccoli', :cost => 1.03, :rating => 5})
      expect(test_food.type()).to(eq('broccoli'))
    end
  end

  describe('#cost') do
    it('returns the cost of food') do
      test_food = Food.new({:type => 'broccoli', :cost => 1.03, :rating => 5})
      expect(test_food.cost()).to(eq(1.03))
    end
  end

  describe('#rating') do
    it('returns the rating of food') do
      test_food = Food.new({:type => 'broccoli', :cost => 1.03, :rating => 5})
      expect(test_food.rating()).to(eq(5))
    end
  end
end

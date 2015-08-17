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

  describe(".all") do
    it('returns all food instances') do
      expect(Food.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a food to the array of saved restaurants') do
      food = Food.new({:type => 'broccoli', :cost => 1.03, :rating => 5})
      food.save()
      expect(Food.all()).to(eq([food]))
    end
  end

  describe('#==') do
    it('returns true if same name, location and phone') do
      food1 = Food.new({:type => 'broccoli', :cost => 1.03, :rating => 5})
      food2 = Food.new({:type => 'broccoli', :cost => 1.03, :rating => 5})
      expect(food1).to(eq(food2))
    end
  end
end

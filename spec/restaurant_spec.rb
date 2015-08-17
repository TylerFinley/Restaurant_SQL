require('spec_helper')

describe(Restaurant) do
  describe("#name") do
    it('returns the restaurant name') do
      restaurant = Restaurant.new({:name => 'Chipotle', :location => 'denver', :phone => '1234567' })
      expect(restaurant.name()).to(eq('Chipotle'))
    end
  end

  describe("#location") do
    it('returns the restaurant location') do
      restaurant = Restaurant.new({:name => 'Chipotle', :location => 'denver', :phone => '1234567' })
      expect(restaurant.location()).to(eq('denver'))
    end
  end

  describe("#phone") do
    it('returns the restaurant phone') do
      restaurant = Restaurant.new({:name => 'Chipotle', :location => 'denver', :phone => '1234567' })
      expect(restaurant.phone()).to(eq('1234567'))
    end
  end

  describe(".all") do
    it('returns all restaurant instances') do
      expect(Restaurant.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a restaurant to the array of saved restaurants') do
      restaurant = Restaurant.new({:name => 'Chipotle', :location => 'denver', :phone => '1234567'})
      restaurant.save()
      expect(Restaurant.all()).to(eq([restaurant]))
    end
  end

  describe('#==') do
    it('returns true if same name, location and phone') do
      restaurant1 = Restaurant.new({:name => 'Chipotle', :location => 'denver', :phone => '1234567'})
      restaurant2 = Restaurant.new({:name => 'Chipotle', :location => 'denver', :phone => '1234567'})
      expect(restaurant1).to(eq(restaurant2))
    end
  end
end

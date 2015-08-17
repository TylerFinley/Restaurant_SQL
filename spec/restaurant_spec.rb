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
end

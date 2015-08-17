class Restaurant
  attr_reader(:name, :location, :phone)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @location = attributes.fetch(:location)
    @phone = attributes.fetch(:phone)
  end

  define_singleton_method(:all) do
    returned_restaurants = DB.exec("SELECT * FROM restaurants;")
    restaurants = []
    returned_restaurants.each() do |restaurant|
      name = restaurant.fetch("name")
      location = restaurant.fetch("location")
      phone = restaurant.fetch("phone")
      restaurants.push(Restaurant.new({:name => name, :location => location, :phone => phone}))
    end
    restaurants
  end

  define_method(:save) do
    DB.exec("INSERT INTO restaurants (name, location, phone) VALUES ('#{name}', '#{location}', '#{phone}');")
  end

  define_method(:==) do |other|
    same_name = self.name().eql?(other.name())
    same_location = self.location().eql?(other.location())
    same_phone = self.phone().eql?(other.phone())
    same_name.&(same_location).&(same_phone)
  end
end

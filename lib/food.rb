class Food
  attr_reader(:type, :cost, :rating)

  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @cost = attributes.fetch(:cost)
    @rating = attributes.fetch(:rating)
  end
  define_singleton_method(:all) do
    returned_foods = DB.exec("SELECT * FROM foods;")
    foods = []
    returned_foods.each() do |food|
      type = food.fetch('type')
      cost = food.fetch('cost').to_f
      rating = food.fetch('rating').to_i
      foods.push(Food.new({:type => type, :cost => cost, :rating => rating}))
    end
    foods
  end
  define_method(:save) do
    DB.exec("INSERT INTO foods(type, cost, rating) VALUES ('#{type}', #{cost}, #{rating});")
  end
  define_method(:==) do |other|
    same_class = self.class().eql?(other.class())
    same_type = self.type().eql?(other.type())
    same_cost = self.cost().eql?(other.cost())
    same_rating = self.rating().eql?(other.rating())
    same_class.&(same_type).&(same_cost).&(same_rating)
  end
end

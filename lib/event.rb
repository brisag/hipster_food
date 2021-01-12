class Event
  attr_reader :name, :food_trucks, :list
  def initialize(name)
    @name = name
    @food_trucks = []
    @list = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |food_truck|
      food_truck.inventory.include?(item)
    end
  end

  def list_of_names
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item|
        @list << item
      end
    end
    @list
  end

  def sorted_item_list
    name_list = list_of_names.map do |item|
      item.name.sort_by do |name|
      name
    end
    end
  end
end

  # def overstocked_items
  #   total_inventory.select do |item, quantity|
  #   [:food_trucks].count > 1 && [:quantity] > 50 &&
  #   end
# end

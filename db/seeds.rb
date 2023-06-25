# Create restaurants
sottocasa = Restaurant.create(name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201')
pizzarte = Restaurant.create(name: 'PizzArte', address: '69 W 55th St, New York, NY 10019')

# Create pizzas
cheese_pizza = Pizza.create(name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese')
pepperoni_pizza = Pizza.create(name: 'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni')

# Create restaurant pizzas
RestaurantPizza.create(restaurant: sottocasa, pizza: cheese_pizza, price: 10)
RestaurantPizza.create(restaurant: sottocasa, pizza: pepperoni_pizza, price: 12)

class RestaurantsController < ApplicationController
    def index
      restaurants = Restaurant.all
      render json: restaurants, only: [:id, :name, :address]
    end
  
    def show
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        render json: restaurant, only: [:id, :name, :address], include: { pizzas: { only: [:id, :name, :ingredients] } }
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    def destroy
  
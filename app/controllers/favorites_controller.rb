class FavoritesController < ApplicationController

    def index
        favorites = logged_in_user.favorites
        render json: favorites
    end

    def create
        restaurant = Restaurant.find(params[:restaurant_id])
        user = logged_in_user
        favorite = Favorite.create(restaurant:restaurant , user: user )
        render json: {message: "Successfully added favorite"}
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {message: "Successfully removed favorite"}
    end

     
    
    
end

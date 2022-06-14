class FavoriteWatchesController < ApplicationController
    
    def create
        @watch = Watch.find params[:watch_id]
        fav = FavoriteWatch.create(user: current_user, watch: @watch)
        redirect_to dashboard_path, :flash => { :notice => "Added As Favourite!" }
        # respond_to do |format|
        #     format.html { redirect_to(dashboard_path),:flash => { :notice => "Added As Favourite" } }
        # end
    end

    def delete
        fav = FavoriteWatch.find params[:watch_id]
        fav.destroy
        redirect_to favourite_watches_user_path(current_user), :flash => { :alert => "Removed From Favourite!" }
    end

    private

    def fav_params
        # params.require(:favourite_watches).permit(user:)
    end
  end
  
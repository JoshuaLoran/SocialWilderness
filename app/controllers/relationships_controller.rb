class RelationshipsController < ApplicationController
  def create
    @followed_user = User.find(params[:relationship][:followed_id])
    @relationship = current_user.active_relationships.build(followed_id: @followed_user.id)
    if @relationship.save
      flash[:success] = "Successfully invited"
      redirect_to "/users/#{@followed_user.id}/profile"
    else
      flash[:danger] = "Unsuccessful"
      redirect_to "/users/#{current_user.id}/profile"
   end
  end

  def destroy
    @relationship = Relationship.find(params[:id])
    if @relationship.follower_user == current_user
      @relationship.destroy
      flash[:success] = "Unfollowed"
    end
    redirect_to "/users/#{@relationship.followed_user.id}/profile"
  end
end

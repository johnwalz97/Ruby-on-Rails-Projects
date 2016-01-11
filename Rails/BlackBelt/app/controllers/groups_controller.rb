class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @groups = Group.all
    respond_with(@groups)
  end
  def show
    @members = User.where(id: @group.users); 
    respond_with(@group)
  end

  def create
    @group = Group.new(group_params)
    @group.users = [current_user.id];
    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
      else
        format.html { redirect_to "/groups", alert: "There are errors with your group name or description... Try again" }
      end
    end
  end

  def update
    if group_params[:join] == "join"
      users = @group.users;
	unless users.include?(current_user.id)
      	users.push(current_user.id);
	end
      @group.update(:users => users)
    else
      users = @group.users;
      users.delete(current_user.id);
      @group.update(:users => users);
    end
    redirect_to :back
  end

  def destroy
    @group.destroy
    respond_with(@group)
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:name, :description, :user_id, :leave, :join)
    end
end

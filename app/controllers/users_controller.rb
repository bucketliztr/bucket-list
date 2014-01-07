class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    
  end

  # GET /users/new
  def new
    @user = User.new
    # @list_item = @user.list_item.build
  end

  # GET /users/1/edit
  def edit
      
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.list_items.build
    # @list_Item = user.list_items.build(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_path(@user), notice: 'Your bucket list was created! You should be receiving a confirmation e-mail shortly.' }
        format.json { render action: 'show', status: :created, location: @user }
        ModelMailer.new_record_notification(@user).deliver
        redirect_to @user
  # end
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    if @user.update(params[:email] == @user.email)
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      raise "Your email must match the e-mail used when creating this Bucket List in order to update it." 
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :age, :location, :password, :password_confirmation, :remember_me, :list_items_attributes =>[:content, :_destroy])
    end
end

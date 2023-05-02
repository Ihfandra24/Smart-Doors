class Api::V1::UsersController < ApplicationController
    def index
        render jsonapi: User.all
    end
    def show
        @user = User.find(params[:id])
        render jsonapi: @user
    end
    def create
        
        @user = User.new(param_user)
        
        if @user.save
            render json: {data: 'berhasil'}
            binding.pry
        else
            
            
            binding.pry
            
            render json: {data: 'gagal'}

          
        end
    end

    private
     
    def param_user
      params.require(:user).permit(:name, :email, :phone, :group_id)
    end 
    
    
end

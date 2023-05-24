class Api::V1::UsersController < ApplicationController
    before_action :login, only: [:update]
    before_action :check_access_token, except: :login

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
        else
            render json: {data: 'gagal'}
        end
    end
 
    def update
        @user = User.find(params[:id])
        if @user.update(param_user)
          render json: {data: 'Berhasil update'}
        else
          render json: {data: 'Gagal update'}
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            render json: {data: 'Berhasil Hapus'}
        else
            render json: {data: 'Gagal Hapus'}
        end
    end

    def login
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            @current_user = user
            user.generate_access_token if user.expired_at < DateTime.now rescue binding.pry
            render jsonapi: user
        else
            render json: { status: 401, message: 'Failed to log in' }
        end
        
    end
    
    private 
    def param_user
      params.require(:user).permit(:name, :email, :password, :phone, :group_id)
    end 

end

class Api::V1::UsersController < ApplicationController
  
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
        # binding.pry
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
    
    private 
    def param_user
      params.require(:user).permit(:name, :email, :phone, :group_id)
    end 

end

class Api::V1::GroupsController < ApplicationController
    before_action :check_access_token, only: [:create, :update, :destroy]
    def index
        render jsonapi: Group.all
    end

    def show
        @group = Group.find(params[:id])
        render jsonapi: @group
    end

    def create
        @group = Group.new(param_group)
        if @group.save
            render json: {data: 'berhasil'}
        else
            render json: {data: 'gagal'}
        end
    end

    def update
        # binding.pry
        @group = Group.find(params[:id])
        if @group.update(param_group)
          render json: {data: 'Berhasil update'}
        else
          render json: {data: 'Gagal update'}
        end
    end

    def destroy
        @group = Group.find(params[:id])
        if @group.destroy
            render json: {data: 'Berhasil Hapus'}
        else
            render json: {data: 'Gagal Hapus'}
        end
    end
    
    private 
    def param_group
      params.require(:group).permit(:name)
    end 

end

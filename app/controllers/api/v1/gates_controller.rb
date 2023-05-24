class Api::V1::GatesController < ApplicationController
    before_action :check_access_token, only: [:create, :update, :destroy]
    def index
        render jsonapi: Gate.all
    end

    def show
        @gate = Gate.find(params[:id])
        render jsonapi: @gate
    end

    def create
        @gate = Gate.new(param_gate)
        if @gate.save
            render json: {data: 'berhasil'}
        else
            render json: {data: 'gagal'}
        end
    end

    def update
        # binding.pry
        @gate = Gate.find(params[:id])
        if @gate.update(param_gate)
          render json: {data: 'Berhasil update'}
        else
          render json: {data: 'Gagal update'}
        end
    end

    def destroy
        @gate = Gate.find(params[:id])
        if @gate.destroy
            render json: {data: 'Berhasil Hapus'}
        else
            render json: {data: 'Gagal Hapus'}
        end
    end
    
    private 
    def param_gate
      params.require(:gate).permit(:name)
    end 

end

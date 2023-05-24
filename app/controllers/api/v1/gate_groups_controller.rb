class Api::V1::GateGroupsController < ApplicationController
    before_action :check_access_token, only: [:create, :update, :destroy]
    def index
        render jsonapi: GateGroup.all
    end

    def show
        @gate_group = GateGroup.find(params[:id])
        render jsonapi: @gate_group
    end

    def create
        @gate_group = GateGroup.new(param_gate_group)
        if @gate_group.save
            render json: {data: 'berhasil'}
        else
            render json: {data: 'gagal'}
        end
    end

    def update
        # binding.pry
        @gate_group = GateGroup.find(params[:id])
        if @gate_group.update(param_gate_group)
          render json: {data: 'Berhasil update'}
        else
          render json: {data: 'Gagal update'}
        end
    end

    def destroy
        @gate_group = GateGroup.find(params[:id])
        if @gate_group.destroy
            render json: {data: 'Berhasil Hapus'}
        else
            render json: {data: 'Gagal Hapus'}
        end
    end
    
    private 
    def param_gate_group
      params.require(:gate_group).permit(:gate_id, :group_id)
    end 

end

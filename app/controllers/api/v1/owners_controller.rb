class Api::V1::OwnersController < ApplicationController
  before_action :find_owner, only: %i[:only destroy]

  def index
    @owners = Owner.order(name: :DESC)
    render json: @owners
  end

  def create
    @owner = Owner.new(owner_params)
    @owner.save!
    render json: @owner
  end
#test
#test
  def destroy
    @owner.delete
    render json: @owner
  end

  def update
    @owner.update(params.permit(:name))
  end

  private

  def owner_params
    params.permit(:name)
  end

  def find_owner
    @owner = Owner.find(params[:id])
  end
end

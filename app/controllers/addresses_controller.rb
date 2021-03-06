class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @addresses = Address.all
    respond_with(@addresses)
  end

  def show
    respond_with(@address)
  end

  def new
    @address = Address.new
    respond_with(@address)
  end

  def edit
  end

  def create
    @address = Address.new(address_params)
    @address.save
    respond_with(@address)
  end

  def update
    @address.update(address_params)
    respond_with(@address)
  end

  def destroy
    @address.destroy
    respond_with(@address)
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:address1, :address2, :address3, :landmark1, :landmark2, :landmark3, :city, :state, :country, :pin, :addressable_id, :addessable_type)
    end
end

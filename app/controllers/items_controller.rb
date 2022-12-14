class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items or /items.json
  def index
    @items = Item.all
    render json: @items
  end

  # GET /items/1 or /items/1.json
  def show
    render json: @item
  end

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)
    render json: @item, status: :ok
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    if @item.update(item_params)
      render json: @item, status: :ok
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy
    render json: @item, status: :ok
  end

  def destroy_all
    @items = Item.all
    @items.destroy_all
    render json: @items, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # If the item id does not exist, then render the following message
    def set_item
      @item = Item.find_by_id(params[:id].to_i)
      render json: {msg:"There is no item with the id #{params[:id]} "}, status: :unprocessable_entity unless @item
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name)
    end
end

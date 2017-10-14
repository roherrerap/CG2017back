class ProductquotesController < ApplicationController
  before_action :set_productquote, only: [:show, :update, :destroy]

  # GET /productquotes
  def index
    @productquotes = Productquote.all

    render json: @productquotes
  end

  # GET /productquotes/1
  def show
    render json: @productquote
  end

  # POST /productquotes
  def create
    @productquote = Productquote.new(productquote_params)

    if @productquote.save
      render json: @productquote, status: :created, location: @productquote
    else
      render json: @productquote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productquotes/1
  def update
    if @productquote.update(productquote_params)
      render json: @productquote
    else
      render json: @productquote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productquotes/1
  def destroy
    @productquote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productquote
      @productquote = Productquote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def productquote_params
      params.require(:productquote).permit(:quantity, :param1, :param2, :param3, :param4, :param5, :Quote_id, :Product_id)
    end
end

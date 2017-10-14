class ProductquoteunregisController < ApplicationController
  before_action :set_productquoteunregi, only: [:show, :update, :destroy]

  # GET /productquoteunregis
  def index
    @productquoteunregis = Productquoteunregi.all

    render json: @productquoteunregis
  end

  # GET /productquoteunregis/1
  def show
    render json: @productquoteunregi
  end

  # POST /productquoteunregis
  def create
    @productquoteunregi = Productquoteunregi.new(productquoteunregi_params)

    if @productquoteunregi.save
      render json: @productquoteunregi, status: :created, location: @productquoteunregi
    else
      render json: @productquoteunregi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productquoteunregis/1
  def update
    if @productquoteunregi.update(productquoteunregi_params)
      render json: @productquoteunregi
    else
      render json: @productquoteunregi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productquoteunregis/1
  def destroy
    @productquoteunregi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productquoteunregi
      @productquoteunregi = Productquoteunregi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def productquoteunregi_params
      params.require(:productquoteunregi).permit(:quantity, :param1, :param2, :param3, :param4, :param5, :quoteunregistered_id, :Product_id)
    end
end

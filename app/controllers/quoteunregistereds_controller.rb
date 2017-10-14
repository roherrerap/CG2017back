class QuoteunregisteredsController < ApplicationController
  before_action :set_quoteunregistered, only: [:show, :update, :destroy]

  # GET /quoteunregistereds
  def index
    @quoteunregistereds = Quoteunregistered.all

    render json: @quoteunregistereds
  end

  # GET /quoteunregistereds/1
  def show
    render json: @quoteunregistered
  end

  # POST /quoteunregistereds
  def create
    @quoteunregistered = Quoteunregistered.new(quoteunregistered_params)

    if @quoteunregistered.save
      render json: @quoteunregistered, status: :created, location: @quoteunregistered
    else
      render json: @quoteunregistered.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quoteunregistereds/1
  def update
    if @quoteunregistered.update(quoteunregistered_params)
      render json: @quoteunregistered
    else
      render json: @quoteunregistered.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quoteunregistereds/1
  def destroy
    @quoteunregistered.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quoteunregistered
      @quoteunregistered = Quoteunregistered.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quoteunregistered_params
      params.require(:quoteunregistered).permit(:name, :email)
    end
end

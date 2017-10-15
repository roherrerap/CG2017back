class AutomatizationController < ApplicationController

  # GET /productquotes
  def index
    query = "SELECT users.firstname, users.lastname, users.email, quotes.state, quotes.id as quote_id, productquotes.quantity, productquotes.param1, productquotes.param2, productquotes.param3, productquotes.param4, productquotes.param5, productquotes.product_id FROM users, quotes, productquotes WHERE users.id = quotes.user_id AND quotes.id = productquotes.quote_id AND quotes.state = false"
    results = ActiveRecord::Base.connection.execute(query)
    if results.present?
      render json: results
    else
      render json: false
    end
  end

end

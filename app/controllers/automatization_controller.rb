class AutomatizationController < ApplicationController

  # GET /productquotes
  def index
    query = "SELECT quotes.id as pedido_id, quotes.date as fecha, productquotes.product_id as producto_id, productquotes.quantity as cantidad, users.firstname as nombres, users.lastname as apellidos, users.address as direccion, users.email, productquotes.param1, productquotes.param2, productquotes.param3, productquotes.param4, productquotes.param5  FROM users, quotes, productquotes WHERE users.id = quotes.user_id AND quotes.id = productquotes.quote_id AND quotes.state = false"
    results = ActiveRecord::Base.connection.execute(query)
    if results.present?
      render json: results
    else
      render json: false
    end
  end

end

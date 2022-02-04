class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_2855e131a459418b87bd137228b9f0fe')
    if params[:ticker] == ""
      @nothing = "Hey! You forgot to enter a symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
        if !@stock
          @error = "Hey! That Stock Symbol doesnt exist!"
      end 
    end
  end

  def about
  end
end

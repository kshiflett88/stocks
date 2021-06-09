require 'dotenv'
Dotenv.load

class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: ENV["API_KEY"])
    
    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker]) 
    end
  end

  def about 
    
  end
end

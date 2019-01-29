require_relative 'config/environment'
require 'pry'
# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
#
# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
class App < Sinatra::Base



  # get '/say/:number/:phrase' do
  #   params[:phrase] * params[:number].to_i
  # end
  get '/say/:number/:phrase' do
    val = params[:number].to_i
    phrase = params[:phrase]
    str = ""
    val.times do
      str += phrase
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/reversename/:name' do
    rname = params[:name].reverse
    "#{rname}"
  end

  get '/square/:number' do
    sqrd = params[:number].to_i
    "#{sqrd * sqrd}"
  end

  get '/:operation/:number1/:number2' do
    if (params[:operation] == "add")
      "#{(params[:number1].to_i) + (params[:number2].to_i)}"
    elsif (params[:operation] == "subtract")
      "#{(params[:number1].to_i) - (params[:number2].to_i)}"
    elsif (params[:operation] == "multiply")
      "#{(params[:number1].to_i) * (params[:number2].to_i)}"
    elsif (params[:operation] == "divide")
      "#{(params[:number1].to_i) / (params[:number2].to_i)}"
    end
  end

end

require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @backcase_name = params[:name].reverse
    "#{@backcase_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    params[:number].to_i.times do
      phrase += params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase = ""
    phrase = params.values.join(" ")
    phrase << "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
       product = num1 + num2
     elsif params[:operation] == "subtract"
       product = num1 - num2
     elsif params[:operation] == "multiply"
       product = num1 * num2
     elsif params[:operation] == "divide"
       product = num1 / num2
     end

     "#{product}"

  end





end

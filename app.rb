require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
      @string = ""
      params[:number].to_i.times do
        @string += "#{params[:phrase]}\n"
      end
      @string
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1, @w2, @w3, @w4, @w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    @w1 + " " + @w2  + " " + @w3 + " " + @w4 + " " + @w5 + "."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @total = params[:number1].to_i + params[:number2].to_i
      @total.to_s
    elsif params[:operation] == "subtract"
      @total = params[:number2].to_i - params[:number1].to_i
      @total.to_s
    elsif params[:operation] == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
      @total.to_s
    else
      @total = @params[:number1].to_i/params[:number2].to_i
      @total.to_s
    end
  end
end
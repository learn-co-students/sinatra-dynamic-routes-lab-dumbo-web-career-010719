require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name=params[:name]

    erb :reversename
  end

  get '/square/:number' do
    @num=params[:number]
    @square=@num.to_i * @num.to_i

    erb :square
  end

  get '/say/:number/:phrase' do
    @number=params[:number]
    @phrase=params[:phrase]
    @array=[]
    @number.to_i.times do
      @array<<@phrase
    end 
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1=params[:word1]
    @word2=params[:word2]
    @word3=params[:word3]
    @word4=params[:word4]
    @word5=params[:word5]
   
    @concat_words="#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."    
    
    erb :concatwords

  end

  get '/:operation/:number1/:number2' do
     @operator=params[:operation]
     @num1=params[:number1]
     @num2=params[:number2]

     erb :operation
  end

end
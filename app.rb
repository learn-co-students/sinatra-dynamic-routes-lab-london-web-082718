require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    user_name = params[:name]
    "#{user_name.reverse}"
  end

  get '/square/:number' do
    answer = params[:number].to_i ** 2
    "#{answer}"
  end

  get '/say/:number/:phrase' do
    result = ''
    params["number"].to_i.times do
      result << params["phrase"] + ' '
    end
    result.strip
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if params[:operation].to_s == "multiply"
      answer = (num1 * num2)
    elsif params[:operation].to_s == "add"
      answer = (num1 + num2)
    elsif params[:operation].to_s == "subtract"
      answer = (num1 - num2)
    elsif params[:operation].to_s == "divide"
      answer = (num1 / num2)
  else answer = "Not a valid operation"
  end
  "#{answer.to_s}"
end
end

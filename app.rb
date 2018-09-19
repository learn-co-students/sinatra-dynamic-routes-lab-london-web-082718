require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
reversed_name = params[:name].reverse
"#{reversed_name}"
end

get '/square/:number' do
sq_num = params[:number].to_i**2
return sq_num.to_s
end

get '/say/:number/:phrase' do
multiplier = params[:number].to_i
return params[:phrase] * multiplier
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
params[:word1] + " " + params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5] + "."
end

get '/:operation/:number1/:number2' do
  case params[:operation]
  when "add"
  "#{params[:number1].to_i + params[:number2].to_i}"
  when "multiply"
  "#{params[:number1].to_i * params[:number2].to_i}"
  when "subtract"
  "#{params[:number1].to_i - params[:number2].to_i}"
  when "divide"
  "#{params[:number1].to_i / params[:number2].to_i}"
  end
end

end

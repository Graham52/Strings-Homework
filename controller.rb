require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/strings.rb')

get '/equal/:string1/:string2' do
  string = Strings.new(params[:string1], params[:string2])
  return "#{string.string()}"
end

get '/palindrome/:string1' do
  string = Strings.new(params[:string1], params[:string2])
  return "#{string.palindrome()}"
end

get '/isogram/:string1' do
  string = Strings.new(params[:string1], params[:string2])
  return "#{string.is_isogram()}"
end

get '/anagram/:string1/:string2' do
  string = Strings.new(params[:string1], params[:string2])
  return "#{string.anagram()}"
end

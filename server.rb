require_relative "./models/checker.rb"
require "pry"
require "sinatra"
require "sinatra/reloader"


enable:sessions

get "/welcome" do 
erb(:home)
end

get "/tologin" do 
erb(:login)
end



post "/login" do
	params.inspect

	@useremail = params[:email]
	@userpassword = params[:password]

	@passwordchecker = Checker.new(@useremail, @userpassword)

	if @passwordchecker.charactercounter == true && @passwordchecker.lenusy == true && @passwordchecker.cases == true && @passwordchecker.dominate == false
		redirect "/welcome"
	else
		redirect "/tologin"
	end

end
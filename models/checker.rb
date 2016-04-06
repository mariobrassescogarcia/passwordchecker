
class Checker

	def initialize email, password
		@email = email
		@password = password
	end

	def charactercounter
		if @password.length > 7
			true
		else
			false
		end
	end

	def lenusy
		if @password.match(/[[:alpha:]]/) && @password.match(/[[:punct:]]/) && @password.match(/[[:digit:]]/)
			true
		else
			false
		end
	end

	def cases
		if @password.match(/[[:upper:]]/) && @password.match(/[[:lower:]]/)
			true
		else
			false
		end
	end

	def dominate
		@nameemail = @email.split("@")[0] 
		@domainemail = @email.split("@")[1]
		if @nameemail.include?(@password) || @domainemail.include?(@password)
			true
		else
			false
		end
	end



end




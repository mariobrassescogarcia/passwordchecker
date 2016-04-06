require "pry"
require "rspec"
require "./checker"




RSpec.describe Checker do 	
	before :each do
		@checker = Checker.new("ironhack@gmail.com", "!UUUUUUUaaa7")
	end

  describe "7characters" do
    it "check if characters > 7" do
      expect(@checker.charactercounter).to eq(true)
    end
 end

  describe "lenusy" do
    it "check if there's at least one letter, number and symbol" do
      expect(@checker.lenusy).to eq(true)
    end
end

  describe "cases" do
    it "check if there's at least one uppercase and lowercase letter" do
      expect(@checker.cases).to eq(true)
    end
end

  describe "dominate" do
    it "check if password is not included in the name or the email domain" do
      expect(@checker.dominate).to eq(false)
    end
end



end




# PasswordChecker.new.check_password(email, password)
# For the password to be secure it must fulfill ALL of the following rules:

# The password must be longer than 7 characters
# The password must contain at least 1 letter, 1 number and 1 symbol (e.g. "#", "%", etc)
# The password must contain at least 1 uppercase and 1 lowercase letter
# The password must NOT contain neither the name nor the domain of the email.
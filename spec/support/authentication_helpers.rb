module AuthenticationHelpers
	def sign_in_as!(user)
		visit '/signin'
		fill_in "Name", with: user.name
		fill_in "Password", with: user.password
		click_button 'Sign in'
		expect(page).to have_content("Signed in successfully.")
	end
end

RSpec.configure do |c|
	c.include AuthenticationHelpers, type: :feature
end


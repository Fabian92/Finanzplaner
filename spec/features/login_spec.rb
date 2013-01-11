require 'spec_helper'

describe 'Sign up' do
	before(:each) do
		visit root_path
end

	it 'alows to sign up' do
		click_link 'Sign up'
		fill_in "user_email", with: 'jannik.v.s@gmx.de'
		fill_in "user_password", with: 'Psykoman!'
		fill_in "user_password_confirmation", with: 'Psykoman!'

		expect { click_button 'Sign up' }.to change { User.count }.by(1)
		page.should have_content 'Welcome, jannik.v.s@gmx.de'
	end
end

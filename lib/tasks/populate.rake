namespace :db do

	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'
		require 'faker'

		User.delete_all


		User.populate 1000 do |user|
			user.name = Faker::Name.name
			user.github_acct = Faker::Code.ean
			user.password = Faker::Internet.password
			user.password_confirmation = user.password
		end 
	end
end
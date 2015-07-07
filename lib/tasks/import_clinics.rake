require 'csv'

namespace :import_clinics do
	task :clinics => :environment do
		CSV.foreach("/Users/BIKONCHOU/Desktop/test.csv") do |row|
		Clinic.create(:rank => row[0], :name => row[1], :phone => row[2])
		end
	end
end
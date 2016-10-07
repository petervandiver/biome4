require 'csv'

namespace :import  do

	desc "Import csi_divisions_master.csv"
	task csi_divisions: :environment do
		#counter = 0

		CSV.foreach("csi_divisions_master.csv") do |row|
		code, title, code_title = row
		CsiDivision.create(code: code, title: title, code_title: code_title)	
		#puts "#{code} - #{csi_division.errors.full_messages.join(",")}" if csi_division.errors.any?
		#counter += 1 if csi_division.persisted
	end
	
		#puts "import #{counter} csi divisions"
	end
end
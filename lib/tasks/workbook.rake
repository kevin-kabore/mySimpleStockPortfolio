namespace :workbook do
  desc "Import Financial Data from CSV to Database"
  task :add_raw => [:environment] do
    require 'csv'

    # lines = File.new("lib/assets/raw.csv").readlines
    #
    # keys = lines.shift.split(',')
    #
    # p keys
    # p lines
    csv_text = File.read('lib/assets/Updated_workbook.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Stock.create!(row.to_hash)
    end
  end

end

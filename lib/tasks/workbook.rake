namespace :workbook do
  desc "Import Financial Data from CSV to Database"
  task :add_row => [:environment] do
    require 'csv'


    lines = File.new("lib/assets/updated_workbook.csv").readlines
    stocks_hash =   Hash.new
    keys = lines[0].split(',')
    keys.each do |key|
      stocks_hash[:key]
    end

    p keys
    p stocks_hash

  end
end

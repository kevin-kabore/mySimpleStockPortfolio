namespace :test do
  desc "Import Financial Data from CSV to Database"
  task :add_row => [:environment] do
    require 'csv'


    lines = File.new("lib/assets/test.csv").readlines
    keys = lines[4].split(',')
    p lines



  end
end

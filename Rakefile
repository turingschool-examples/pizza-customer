require 'rake'

task :default => :test
task :test do
  Dir.glob('./test/*_test.rb').each { |file| require file}
end

task :pizza do
  require './test/pizza_test.rb'
end

task :customer do
  require './test/customer_test.rb'
end

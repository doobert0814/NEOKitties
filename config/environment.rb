require 'bundler'
Bundler.require

require_all 'app'

# require_relative '../app/kitties.rb'
# require_relative '../lib/command_line_interface.rb'
# require_relative '../app/toy.rb'
# require_relative '../app/user.rb'



ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'db/development.db'
)

#ActiveRecord::Base.logger = nil

ActiveRecord::Base.logger = Logger.new(STDOUT)



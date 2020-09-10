require 'bundler'
Bundler.require

# require_all 'app'

require_relative '../app/models/kitty.rb'
#require_relative '../bin/run.rb'
require_relative '../app/models/toy.rb'
require_relative '../app/models/user.rb'



ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
)

#ActiveRecord::Base.logger = nil

ActiveRecord::Base.logger = nil #Logger.new(STDOUT)



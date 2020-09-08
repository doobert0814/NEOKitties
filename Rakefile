require_relative 'config/environment'
require "sinatra/activerecord/rake"


def reload!
  load_all './app'
end


desc 'Loads up a console!'
task :console do
  Pry.start
end
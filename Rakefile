require "bundler/gem_tasks"
task :default => :spec
require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
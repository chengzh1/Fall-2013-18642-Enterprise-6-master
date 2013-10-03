require 'rubygems'
require 'rake'
require 'fileutils'
require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'

desc "Task for the build machine"
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty"
end
task :continuous_integration  => ['git_clean', 'db:migrate', 'spec', 'features']

task :git_clean do
  # system 'git checkout db/schema.rb'
  # system 'git checkout Gemfile.lock'
end
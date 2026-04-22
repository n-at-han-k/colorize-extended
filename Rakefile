# frozen_string_literal: true

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Run tests'
task :default do
  ENV['TEST'] = 'test/test_colorize_extended.rb'
  Rake::Task[:test].execute
end

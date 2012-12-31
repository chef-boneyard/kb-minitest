#!/usr/bin/env ruby

require 'rake/testtask'

abort "usage: #{File.basename($0)} <test_base_path>" if ARGV.first.nil?

base_path = File.expand_path(ARGV.shift)
test_files = [ "#{base_path}/**/*_spec.rb", "#{base_path}/**/test_*.rb" ]

Rake::TestTask.new(:test) do |t|
  t.libs = []
  t.test_files = FileList[*test_files]
  t.verbose = true
end

Rake::Task["test"].invoke

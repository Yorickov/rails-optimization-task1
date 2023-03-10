require 'benchmark/ips'
require_relative 'task-1'

Benchmark.ips do |x|
  x.config(stats: :bootstrap, confidence: 95)
  x.report('Working time') { work('data_medium.txt') }
end

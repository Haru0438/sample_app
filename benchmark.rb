require 'benchmark'

STRING_HASH = { 'foo' => 'bar' }
SYMBOL_HASH = { foo: 'bar' }
NUMBER_HASH = { 100 => 'bar' }
_ = 'foo'
_ = :foo
_ = 100

n = 100_000_000
Benchmark.bmbm do |x|
  x.report('String') { n.times { STRING_HASH } }
  x.report('Symbol') { n.times { SYMBOL_HASH } }
  x.report('Number') { n.times { NUMBER_HASH } }
end

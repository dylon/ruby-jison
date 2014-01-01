Gem::Specification.new do |s|
	s.name    = 'jison'
	s.version = '0.1.0'
	s.date    = '2014-01-01'

	s.homepage = 'https://github.com/dylon/ruby-jison'
	s.summary  = 'Ruby, Jison Compiler'
	s.description = <<-EOS
		Wrapper around the jison, npm module that compiles Jison grammars and
		returns the corresponding, JavaScript text.
	EOS

	s.files = Dir.glob('lib/**/*.rb')

	s.authors = ['Dylon Edwards']
	s.email   = 'dylon.edwards@gmail.com'
	s.license = 'MIT'
end

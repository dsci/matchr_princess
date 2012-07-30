Gem::Specification.new do |s|
  s.name        = 'matchr_princess'
  s.version     = '0.2'
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Daniel Schmidt'
  s.email       = 'dsci@code79.net'
  s.summary     = 'Small matcher library for rspec'
  s.description = 'This goes out to the marvelous novell "A princess of mars" by Edgar Rice Burroughs.'

  s.files         = ['matchr_princess.rb', 'Readme.md']
  s.require_path  = '.'

  # This will added later. 
  s.add_development_dependency('rspec', ["~> 2.0"])
end
Gem::Specification.new do |s|
  s.name = 'projen'
  s.version = '0.1.1'
  s.authors = ['Curtis McEnroe']
  s.email = ['programble@gmail.com']
  s.homepage = 'https://github.com/programble/projen'
  s.summary = 'A project templating tool'
  s.description = 'A tool for developers to quickly create new projects based on directory templates'

  s.add_dependency 'liquid', '>= 0'

  s.files = `git ls-files`.split("\n")
  s.executables = 'projen'
end

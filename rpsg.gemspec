Gem::Specification.new do |spec| 
  spec.name                             = "rpsg"
  spec.version                          = "0.1.9"
  spec.date                             = "2017-10-12"
  spec.summary                          = "A Rock Paper Scissors Game Ruby Gem"
  spec.description                      = <<-EOF 
    A Ruby-programmed rock paper scissors game. 
    Now you can play rock paper scissors on your computer whenever you'd like! :)
  EOF
  spec.author                           = "bag3318"
  spec.email                            = ""
  spec.homepage                         = "https://rubygems.org/gems/rpsg"
  spec.platform                         = Gem::Platform::RUBY
  spec.require_paths                    = ["lib"]
  spec.files                            = `git ls-files -z`.split("\x0")
  spec.post_install_message             = <<-EOF
    Thanks for installing! 
    I hope you will have fun playing rock paper scissors! :)
  EOF
  spec.license                          = "MIT"
  spec.required_ruby_version            = ">= 2.0.0"
  spec.required_rubygems_version        = ">= 2.6.0"
  spec.extra_rdoc_files                 = ["README.md"]
  spec.bindir                           = "bin"
  spec.metadata                         = { 
    "issue_tracker" => "https://github.com/bag3318/RPSG/issues/", 
    "source_code"   => "https://github.com/bag3318/RPSG"         
  }
  spec.executables                     << "rpsg"
  spec.requirements                    << "A Windows or Mac computer"
  spec.add_runtime_dependency 'rake'    , '~> 12.0', '>= 12.0.0'
  spec.add_runtime_dependency 'rvm'     , '~> 1.11', '>= 1.11.3.9'
  spec.add_runtime_dependency 'bundler' , '~> 1.14', '>= 1.14.6'
  spec.add_runtime_dependency 'rdoc'    , '~> 5.1' , '>= 5.1.0'
end

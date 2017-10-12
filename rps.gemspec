Gem::Specification.new do |spec| 
  spec.name                             = "rpsg"
  spec.version                          = "0.0.3"
  spec.date                             = "2017-10-11"
  spec.summary                          = "A Rock Paper Scissors Game Ruby Gem"
  spec.description                      = <<-EOF 
    A Ruby-programmed rock paper scissors game. 
    Now you can play rock paper scissors on your computer whenever you'd like! :)
  EOF
  spec.author                           = "bag3318"
  spec.platform                         = Gem::Platform::RUBY
  spec.require_paths                    = ["lib"]
  spec.files                            = `git ls-files -z`.split("\x0")
  spec.post_install_message             = <<-EOF
    Thanks for installing! I hope you will have fun playing rock paper scissors! :)
  EOF
  spec.license                          = "MIT"
  spec.required_ruby_version            = ">= 2.0.0"
  spec.required_rubygems_version        = ">= 2.6.0"
  spec.extra_rdoc_files                 = "README.md"
  spec.bindir                           = "bin"
  spec.executables                     << "rps"
  spec.requirements                    << "A Windows or Mac computer"
  spec.add_runtime_dependency "colorize", "~> 0.8.1"
  spec.add_runtime_dependency "rake"    , "~> 12.0.0"
  spec.add_runtime_dependency "rvm"     , "~> 1.11.3.9"
  spec.add_development_dependency "bundler" , "~> 1.14.6"
  spec.add_development_dependency "rdoc"    , "~> 5.1.0"
  # ========
  # spec.add_runtime_dependency "bundler" 
  # spec.add_runtime_dependency "colorize"
  # spec.add_runtime_dependency "rake"    
  # spec.add_runtime_dependency "rvm"     
  # spec.add_development_dependency "rdoc"
end

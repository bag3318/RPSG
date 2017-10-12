require 'rdoc/task'

task :default => :test

file_path = "./test/rpsg.rb"

task :test do 
	ruby file_path
end

RDoc::Task.new do |rdoc|
  # rdoc.main = "README.rdoc"
  rdoc.rdoc_files.include("README.md", "lib")
  rdoc.rdoc_dir = "doc"
end
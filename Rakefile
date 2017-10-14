require 'rdoc/task'

# task :default => :test

file_path = "./test/test_rpsg.rb"

task :test do 
	ruby file_path
end

task :delgem do
	`DEL rpsg-*.*.*.gem`
end

task :deldoc do
	`RMDIR /S /Q "doc"` 
end

RDoc::Task.new do |rdoc|
  # rdoc.main = "README.rdoc"
  rdoc.rdoc_files.include("lib")
  rdoc.rdoc_dir = "doc"
  rdoc.title = "RPSG RDocs"
end
  



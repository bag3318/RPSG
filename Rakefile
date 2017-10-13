require 'rdoc/task'

# task :default => :test

file_path = "./test/test_rpsg.rb"

task :test do 
	ruby file_path
end

# task :delgem do
# 	`DEL rpsg-*.*.*.gem`
# end

Rake::Task.new do |delgem|
	`DEL rpsg-*.*.*.gem`
end

RDoc::Task.new do |rdoc|
  # rdoc.main = "README.rdoc"
  `RMDIR /S /Q "doc"` 
  rdoc.rdoc_files.include("lib")
  rdoc.rdoc_dir = "doc"
  rdoc.title = "RPSG RDocs"
end

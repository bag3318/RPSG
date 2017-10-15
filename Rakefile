require 'rdoc/task'

# task :default => :test

file_path = "./test/test_rpsg.rb"

task :test do 
	# tests the ruby test file
	ruby file_path
end

# for Windows
task :delgem do
	# this deletes any `.gem` file in current direcotry on Windows
	`DEL rpsg-*.*.*.gem`
end

# for Mac
task :delgemosx do 
	# this deletes any `.gem` in current directory on Mac
	`rm -Rf rpsg-*.*.*.gem`
end

# for Mac 
task :deldocosx do 
	# this deletes the `doc` folder in the current directory
	`rm -Rf doc`
end 

# for Windows
task :deldoc do
	# this deletes the `doc` folder in the current directory
	`RMDIR /S /Q "doc"` 
end

RDoc::Task.new do |rdoc|
  # rdoc.main = "README.rdoc"
  rdoc.rdoc_files.include("lib")
  rdoc.rdoc_dir = "doc"
  rdoc.title = "RPSG RDocs"
end
  



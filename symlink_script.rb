require 'rake'
require 'fileutils'

DIRECTORY = File.expand_path('~')

# get all the files from the dotfiles repository
dotfiles = FileList["#{DIRECTORY}/dotfiles/**"]

# create the names of the new links
syms = dotfiles.pathmap("#{DIRECTORY}/.%n")

# delete all the existing dotfiles

syms.each do |filename|
  if File.file?(filename)
    puts "Deleting file: #{filename}"
    FileUtils.remove_file(filename)
  end
end

# symlink all of the files

dotfiles.zip(syms) do |target, source|
  puts "SymLinking #{target} to #{source}"
  FileUtils.ln_s target, source, :force => true
end
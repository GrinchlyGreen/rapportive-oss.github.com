require 'rubygems'
require 'sinatra/base'

class Minimal < Sinatra::Base

  def self.serve_directory(directory, location)
    absolute_dir = File.expand_path(File.join(File.dirname(__FILE__), directory))

    get location + '*' do
      path = params[:splat].first
      path = 'index.html' if path == ''
      filename = File.expand_path(File.join(absolute_dir, path))
      send_file filename if filename.start_with?(absolute_dir) && File.exist?(filename)
    end
  end

  serve_directory '../raplet-docs/_site', '/raplet-docs/'
  serve_directory '_site', '/'
end

run Minimal

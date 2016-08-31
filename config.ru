# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

begin
  # make a spot for the site
  dest = Rails.root.join('public/blog')

  # generate the site
  Jekyll::Site.new(
    Jekyll.configuration('config' => Rails.root.join('config', 'jekyll.yml').to_s,
                         'source' => Rails.root.join('blog').to_s,
                         'destination' => dest.to_s)
  ).process

  # the strange codes give the output color
  Rails.logger.info "\e[0;32;49mJekyll site built!\e[0m]]"
rescue => e
  Rails.logger.error "\e[0;31;49mJekyll site build failed.\e[0m\n\e[0;33;49mError:\e[0m #{e}"
end

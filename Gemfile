source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# jquery ui styles and js
gem 'jquery-ui-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#use Twitter Bootstrap library for front-end UI and layout
gem 'bootstrap-sass', '3.3.7'

#use FontAwesome SASS gem for adding icons
gem 'font-awesome-sass', '4.6.2'

#use Hirb for better database table display console
gem 'hirb', '0.7.3'

#use Devise for user authentication
gem 'devise', '4.2.0'

# Use cloudinary as image/video CDN
gem 'cloudinary'

# Google Calendar API
gem 'google-api-client'
gem 'google_calendar', '~> 0.5.1'


# Bootstrap form helpers
gem 'bootstrap_form'



# Until the new API calls are generally available, you must manually specify my fork
# of the Heroku API gem:
gem 'platform-api', git: 'https://github.com/jalada/platform-api', branch: 'master'
gem 'letsencrypt-rails-heroku', group: 'production'

# FullCalendar
gem 'fullcalendar-rails'
gem 'momentjs-rails'

# Figaro gem for storing environmental variables
gem "figaro"

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :production do
  # Use the PostgreSQL gem for Heroku production servers
  gem 'pg', '0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

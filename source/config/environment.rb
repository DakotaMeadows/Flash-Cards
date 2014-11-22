require "active_record"
require "rspec"
require "rake"
require "sqlite3"
require "pathname"


path_to_root_directory = File.expand_path('../../', __FILE__)
APP_ROOT = Pathname.new(path_to_root_directory)

model_files = Dir[APP_ROOT.join('app', 'models', '*.rb')]

model_files.each do |model_file|
  filename = File.basename(model_file, ".*")
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end

ActiveRecord::Base.logger = Logger.new(STDOUT)

database_config = { :adapter  =>  "sqlite3",
                    :database => "#{APP_ROOT}/db/dogs.sqlite3" }

ActiveRecord::Base.establish_connection(database_config)

ActiveRecord::Base.connection
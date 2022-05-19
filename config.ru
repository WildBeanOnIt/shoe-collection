require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# used to send PATCH and DELETE request.
use Rack::MethodOverride

use UsersController
use ShoesController
run ApplicationController
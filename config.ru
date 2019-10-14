require './config/environment'



use Rack::MethodOverride
use SessionController
use VideogamesController
run ApplicationController
require './config/environment'
require_all './app'


use Rack::MethodOverride
use SessionController
use VideogamesController
run ApplicationController
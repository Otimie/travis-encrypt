require 'net/http'
require 'uri'
require 'json'

require 'travis'

repo = Travis::Repository.find('rails/rails')
puts repo.encrypt('FOO=bar')

require 'travis'

Travis::Repository.find('rails/rails')
puts repo.encrypt('FOO=bar')

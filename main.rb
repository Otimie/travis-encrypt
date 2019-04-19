require 'net/http'
require 'uri'
require 'json'

require 'travis'

repo = Travis::Repository.find('rails/rails')
puts repo.encrypt('FOO=bar')

payload = {key: 'value'}

uri = URI.parse("https://api.travis-ci.com/")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri, header)
request.body = user.to_json
response = http.request(request)

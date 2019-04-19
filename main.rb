require 'net/http'
require 'uri'
require 'json'

require 'travis'

repo = Travis::Repository.find('rails/rails')
puts repo.encrypt('FOO=bar')

header = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Travis-API-Version': '3',
  'Authorization': 'token ' + ENV['TOKEN']
}
payload = {
  "request": {
    "branch":"master",
    "config": {
      "env": {}
    }
  }
}

uri = URI.parse("https://api.travis-ci.com/")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri, header)
request.body = payload.to_json
response = http.request(request)

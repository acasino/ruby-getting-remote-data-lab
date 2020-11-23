require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    #initialize with a URL
    def initialize(url)
        @url = url
    end

            
    #sends a GET request to the URL passed on initialization; returns the body of response
    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    #uses get_response_body to send a request, returns ruby array/hash of data converted from response
    def parse_json
        data = JSON.parse(self.get_response_body)
        data.collect do |p|
            p
        end
    end

end


#https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json
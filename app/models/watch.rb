class Watch < ApplicationRecord
    has_many :favourite_watches
    has_many :users, through: :favourite_watches

    def self.appi 
        url = URI("https://watch-database1.p.rapidapi.com/all-brands")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'cfdf1741cdmshe9daeae3c3d2185p1c4e20jsnf6c4c3662463'
        request["X-RapidAPI-Host"] = 'watch-database1.p.rapidapi.com'

        response = http.request(request)
        puts response.read_body
        a = JSON.parse(response.read_body)
        b =[]
        a.each_with_index { |key, val| b << "#{key.values}".gsub(/"|\[|\]/, '') }
        b
    end
    def self.fetch_model
        require 'net/http'
        require 'openssl'

        url = URI("https://watch-database1.p.rapidapi.com/all-models-by/brandname/Omega/family/Aqua%20Terra")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'cfdf1741cdmshe9daeae3c3d2185p1c4e20jsnf6c4c3662463'
        request["X-RapidAPI-Host"] = 'watch-database1.p.rapidapi.com'

        response = http.request(request)
        puts response.read_body
        data = JSON.parse(response.read_body)
    end

    def self.get_watch_image(model)

        url = URI("https://watch-database1.p.rapidapi.com/watch-media-links-by-id/#{model}")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'cfdf1741cdmshe9daeae3c3d2185p1c4e20jsnf6c4c3662463'
        request["X-RapidAPI-Host"] = 'watch-database1.p.rapidapi.com'

        response = http.request(request)
        byebug

        
        data = JSON.parse(response.read_body)
    end
end

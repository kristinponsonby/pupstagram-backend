class YelpSearch

    attr_reader :response, "businesses"

    def initialize(location)
        url = "https://api.yelp.com/v3/businesses/search"
        params = {
            term: "dog_parks",
            location: location,
            limit: 20
    }
  
        response = HTTP.auth("Bearer #{ENV["YELP_API_KEY"]}").get(url, params: params)
        @response = response.parse
        @businesses = @response["businesses"]
    end





end
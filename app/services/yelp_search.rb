class YelpSearch

    attr_reader :response, :businesses

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

    def to_dog_parks
        @businesses.map do |business| 
            DogPark.find_or_create_by(yelp_id: business["id"]) do |dog_park|
                dog_park.name = business["name"]
                dog_park.url = business["url"]
                dog_park.image_url = business["image_url"]
                dog_park.address = business["location"]["display_address"].join(", ")
                dog_park.zip_code = business["location"]["zip_code"].to_i
                dog_park.rating = business["rating"].to_i
            end.id
            
        end
        DogPark.where(id: dog_park_ids)
    end






end
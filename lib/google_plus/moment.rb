module GooglePlus

  # A Moment in Google Plus
  class Moment
    extend GooglePlus::Resource
    include GooglePlus::Entity
  
    def insert
      collection = params[:collection] || 'vault'
      resource = "people/#{user_id}/moments/#{collection}"
      make_request(:post, resource, params, self.to_json)
    end
  
    def initialize(hash)
      binding.pry
      load_hash(hash)
    end
  end
end  
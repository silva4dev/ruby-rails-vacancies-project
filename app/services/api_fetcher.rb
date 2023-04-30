module Services
  class ApiFetcher
    BASE_URL = "https://prod.api.sinaxys.com/v2".freeze
    def fetch_data(method: :get, path: "", data: nil)
      url = "#{BASE_URL}#{path}"
      case method
      when :get
        response = RestClient.get(url)
      when :post
        response = RestClient.post(url, data.to_json, content_type: :json)
      when :patch
        response = RestClient.patch(url, data.to_json, content_type: :json)
      when :delete
        response = RestClient.delete(url)
      else
        raise ArgumentError, "Invalid HTTP method: #{method}"
      end

      JSON.parse(response.body)
    end
  end
end

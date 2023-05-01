require_relative "../services/api_fetcher"

class JobsController < ApplicationController
  def index
    @jobs = Services::ApiFetcher.new.fetch_data(method: :get, path: "/jobs")
  end

  def show
    @job = Services::ApiFetcher.new.fetch_data(method: :get, path: "/jobs/#{params[:id]}").as_json
  end
end

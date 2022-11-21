class SessionController < ApplicationController

  def index
  end

  def create
    @session = Session.create
    redirect_to session_path(@session)
  end

  def show
    @session = Session.find(params[:id])
    @restaurants_list = call_nearbysearch_google_api(params[:latitude], params[:longitude])
    @restaurants = @session.restaurants
  end

  private 

  def call_nearbysearch_google_api(latitude, longitude)
    url = URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude}%2C#{longitude}&radius=1000&type=restaurant&key=#{ENV['GOOGLE_API_KEY']}")
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse(response.read_body)["results"]
  end

end

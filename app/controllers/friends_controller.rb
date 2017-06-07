class FriendsController < ApplicationController
  def index
    @friends = Unirest.get("localhost:3000/api/v2/friends.json").body
  end

  def new
    
  end

  def create

    friend = Unirest.post(
                            "localhost:3000/api/v2/friends.json?character=#{params[:character]}&quote=#{params[:quote]}&location=#{params[:location]}",
                            headers: {
                                      "Accept" => "application/json"
                                      }
                           ).body

    redirect_to "/friends/#{friend["id"]}"
  end
  def show
    @friend = Unirest.get("localhost:3000/api/v2/friends/#{params[:id]}.json").body


  end
end

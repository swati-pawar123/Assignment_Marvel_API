class Character < ApplicationRecord

  response = RestClient.get("https://gateway.marvel.com/v1/public/characters?ts=#{ENV["TS"]}&apikey=#{ENV["API_KEY"]}&hash=#{ENV["HASH"]}")

  characters = JSON.parse(response)["data"]["results"]

  def self.character_by_id(id)

    response = RestClient.get("http://gateway.marvel.com/v1/public/characters/#{id}?&ts=#{ENV["TS"]}&apikey=#{ENV["API_KEY"]}&hash=#{ENV["HASH"]}")

    character_response = JSON.parse(response)

  end

end

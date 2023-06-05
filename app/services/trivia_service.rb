class TriviaService

  def self.get_sports_trivia
    JSON.parse(conn.get("category=sportsleisure").body, symbolize_names: true)
  end

  private 
  def self.conn
    x = Faraday.new(
      url: "https://api.api-ninjas.com/v1/trivia?",
      headers: {X_Api_Key: "mswLf6FCOdPnld9JgSxMUg==Vaa926XH0nBhaW8N"}
    )
  end
end
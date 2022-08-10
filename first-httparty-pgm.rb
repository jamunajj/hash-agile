require "httparty"

class PostManager
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def initialize()

  end

  def create_post(title, body, user_id)
    params = { body: { title: title, body: body, userID: user_id } }
    self.class.post("/posts", params).parsed_response
  end
end

post_manager = PostManager.new()
p post_manager.create_post("foo", "bar", 1)
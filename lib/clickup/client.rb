require 'httparty'

module Clickup
  class Client
    include HTTParty
    # debug_output $stdout
    base_uri 'https://api.clickup.com/api/v1'

    def initialize(token)
      @options = {
        headers: {
          "Authorization" => token,
          'Content-Type' => 'application/json'
        }
      }
    end

    def me
      response = self.class.get('/user', @options)
      response['user']
    end

    def new_task(list_id, task)
      response = self.class.post("/list/#{list_id}/task", {
        body: task.to_json
      }.merge(@options))

      response
    end
  end
end

require "test_helper"

class ClickupTest < Minitest::Test
  def test_exists
    refute_nil ::Clickup::VERSION
  end

  def test_that_returns_user
    # @client = Clickup::Client.new
    # me = @client.me

    # assert me['id'] == 999
  end

  def test_that_creates_task
    # @client = Clickup::Client.new
    # task = @client.new_task(1111, { name: 'Test', content: 'Test' })
  end
end

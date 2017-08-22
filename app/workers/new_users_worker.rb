class NewUsersWorker
  include Sidekiq::Worker

  def perform(user_email)
    client = Slack::Web::Client.new
    client.chat_postMessage(channel: '#new-users-come-here', text: "The user #{user_email} has just signed up! :parrot:", as_user: true)
  end
end

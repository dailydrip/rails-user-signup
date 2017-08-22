Slack.configure do |config|
  config.token = Rails.application.secrets.slack_api_token
  raise 'Missing slack_api_token!' unless config.token
end

require 'slack-notifier'

notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
notifier.ping "Hello World"
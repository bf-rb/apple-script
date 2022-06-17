# frozen_string_literal: true

# AppleScript base module
module AppleScript
  autoload :Version, 'apple_script/version'
  autoload :Sounds, 'apple_script/sounds'
  autoload :Notification, 'apple_script/notification'

  def self.exec(osascript)
    system("osascript -e '#{osascript}'")
  end
end

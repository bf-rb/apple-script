# frozen_string_literal: true

module AppleScript
  # Displaying Notifications
  class Notification
    # @param title [String] Notification title
    # @param subtitle [String] Notification subtitle
    # @param description [String] Notification description text
    # @param sound [String] Basso,Blow,Bottle,Frog,Funk,Glass,Hero,Morse,Ping,
    #   Pop,Purr,Sosumi,Submarine,Tink
    def initialize(title:, description:, subtitle: nil, sound: nil)
      @title = title
      @subtitle = subtitle
      @description = description
      @sound = sound
    end

    # Show Notification
    def show
      AppleScript.exec(osascript)
    end

    private

    # AppleScript code for display notification
    # @return [String]
    def osascript
      script_text = 'activate display notification' \
        " \"#{@description}\"" \
        " with title \"#{@title}\""
      script_text += " subtitle \"#{@subtitle}\"" if @subtitle
      script_text += " sound name \"#{@sound}\"" if @sound
      script_text
    end
  end
end

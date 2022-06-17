# frozen_string_literal: true

module AppleScript
  module Ext
    # Dialog buttons helper
    module Buttons
      # Script text for buttons
      # @param ok_btn [String] OK btn text
      # @param cancel_btn [String] Cancel btn text
      # @return [String]
      def buttons(ok_btn:, cancel_btn:)
        " buttons {\"#{cancel_btn}\", \"#{ok_btn}\"} "\
        "default button \"#{ok_btn}\" cancel button \"#{cancel_btn}\""
      end
    end
  end
end

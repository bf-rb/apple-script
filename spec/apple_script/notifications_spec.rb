# frozen_string_literal: true

RSpec.describe AppleScript::Notification do
  context 'osascript' do
    it 'title & description' do
      expect(
        described_class.new(
          title: 'Title',
          description: 'Description'
        ).send(:osascript)
      ).to(
        eql('activate display notification "Description" with title "Title"')
      )
    end

    it 'title & description & subtitle' do
      expect(
        described_class.new(
          title: 'Title',
          description: 'Description',
          subtitle: 'Subtitle'
        ).send(:osascript)
      ).to(
        eql(
          'activate display notification "Description" with title "Title"' \
          ' subtitle "Subtitle"'
        )
      )
    end

    it 'title & description & sound' do
      expect(
        described_class.new(
          title: 'Title',
          description: 'Description',
          sound: AppleScript::Sounds::BLOW
        ).send(:osascript)
      ).to(
        eql(
          'activate display notification "Description" with title "Title"' \
          ' sound name "Blow"'
        )
      )
    end

    it 'title & description & subtitle & sound' do
      expect(
        described_class.new(
          title: 'Title',
          description: 'Description',
          subtitle: 'Subtitle',
          sound: AppleScript::Sounds::BLOW
        ).send(:osascript)
      ).to(
        eql(
          'activate display notification "Description" with title "Title"' \
          ' subtitle "Subtitle" sound name "Blow"'
        )
      )
    end
  end
end

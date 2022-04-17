# frozen_string_literal: true

RSpec.describe Apple::Script do
  it "has a version number" do
    expect(Apple::Script::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

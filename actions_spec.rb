require "./spec_helper"

RSpec.describe "fibonacci action" do
  include Capybara::DSL

  it "returns the correct value for the first value in the sequence" do
    visit("/actions/fibonacci/0")
    response = JSON.parse(page.body)
    expect(response["answer"]).to eq(0)
  end

  it "returns the correct value for the 5th in the sequence" do
    visit("/actions/fibonacci/5")
    response = JSON.parse(page.body)
    expect(response["answer"]).to eq(5)
  end
end

require "./spec_helper"

# Tests for an 'action' on a server that computes values in the fibonacci
# sequence (0 1 1 2 3 5 8 13 21...)

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

  it "returns an error for blank input" do
    visit("/actions/fibonacci/")
    status = page.status_code
    expect(status).to eq(400)
  end
end

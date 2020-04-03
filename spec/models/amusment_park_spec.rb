require "rails_helper"

RSpec.describe AmusmentPark, type: :model do
  describe "relationships" do
    it {should have_many :rides}
  end
end

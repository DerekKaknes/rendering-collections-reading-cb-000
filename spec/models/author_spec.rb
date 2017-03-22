# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Author, type: :model do
  before(:each) do
    @author = Author.new(name: "Derek", hometown: "Maine")
  end
  it "has a name" do
    expect(@author.name).to eq("Derek")
  end

  it "has a hometown" do
    expect(@author.hometown).to eq("Maine")
  end
end

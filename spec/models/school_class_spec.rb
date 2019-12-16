# require 'rails_helper'

# RSpec.describe SchoolClass, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end


require 'rails_helper'

describe SchoolClass do
  before(:each) do
    @school_class = SchoolClass.create!(title: "Computer Science", room_number: 5)
  end

  it 'can be created' do
    expect(@school_class).to be_valid
  end

end
# == Schema Information
#
# Table name: subs
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#

require 'test_helper'

class SubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

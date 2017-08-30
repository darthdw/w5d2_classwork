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

class Sub < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true

  belongs_to :moderator,
    primary_key: :id,
    foreign_key: :owner_id,
    class_name: :User

  has_many :comments,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Comment

end

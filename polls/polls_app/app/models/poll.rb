# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Poll < ApplicationRecord
  belongs_to :author,
    foreign_key: :user_id,
    class_name: :User 

  has_many :questions,
    foreign_key: :poll_id, 
    class_name: :Question
end

# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  answer_id  :integer          not null
#
class Response < ApplicationRecord
  belongs_to :respondent,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :answer_choice,
    foreign_key: :answer_id,
    class_name: : AnswerChoice
end

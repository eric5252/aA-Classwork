# == Schema Information
#
# Table name: answer_choices
#
#  id           :bigint           not null, primary key
#  text         :string           not null
#  questions_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class AnswerChoice < ApplicationRecord
  
end

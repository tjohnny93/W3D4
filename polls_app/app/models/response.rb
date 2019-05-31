# == Schema Information
#
# Table name: responses
#
#  id              :bigint           not null, primary key
#  answerchoice_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer          not null
#

class Response < ApplicationRecord
  validate :respondent_already_answered?
  
  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answerchoice_id,
  class_name: :AnswerChoice
  
  belongs_to  :respondent,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User
  
  has_one :question,
  through: :answer_choice,
  source: :question   
  
  
  def sibling_responses
      question = self.question
      same_id = self.id
      question.responses.where.not(responses: {id: same_id})
  end

  # private ## ask question

  def respondent_already_answered?
    respondent_id = self.sibling_responses.pluck(:user_id)
    if respondent_id.include?(self.user_id)
      errors[:response] << "already responded"
    end
  end

  

end

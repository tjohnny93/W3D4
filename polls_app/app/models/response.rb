# == Schema Information
#
# Table name: responses
#
#  id              :bigint           not null, primary key
#  question_id     :integer          not null
#  answerchoice_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer          not null
#

class Response < ApplicationRecord
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answerchoice_id,
    class_name: :AnswerChoice

  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

  belongs_to  :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

end

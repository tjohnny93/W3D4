# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  answer_text :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
  has_many :responses,
    primary_key: :id,
    foreign_key: :answerchoice_id,
    class_name: :Response

  has_many :questions,
    through: :responses,
    source: :question
end

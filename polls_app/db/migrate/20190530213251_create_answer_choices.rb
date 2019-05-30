class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :answer_text, null: false
      t.timestamps
    end
  end
end

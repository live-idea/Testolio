class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :body
      t.boolean :is_right
      t.integer :question_id
    end
  end

  def self.down
    drop_table :answers
  end
end

class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :quest_text
      t.integer :test_id
    end
  end

  def self.down
    drop_table :questions
  end
end

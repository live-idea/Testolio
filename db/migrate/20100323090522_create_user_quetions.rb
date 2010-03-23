class CreateUserQuetions < ActiveRecord::Migration
  def self.up
    create_table :user_quetions do |t|
      t.integer :question_id
      t.integer :result_test_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_quetions
  end
end

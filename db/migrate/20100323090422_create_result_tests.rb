class CreateResultTests < ActiveRecord::Migration
  def self.up
    create_table :result_tests do |t|
      t.integer :test_id
      t.timestamps
    end
  end

  def self.down
    drop_table :result_tests
  end
end

class AddResultToResultTest < ActiveRecord::Migration
  def self.up
    add_column :result_tests, :result, :integer, :dafault => 0
  end

  def self.down
    remove_column :result, :integer 
  end
end

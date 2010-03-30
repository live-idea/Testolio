class CreateUtests < ActiveRecord::Migration
  def self.up
    create_table :utests do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :utests
  end
end

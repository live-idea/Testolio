class CreateChoiseVariants < ActiveRecord::Migration
  def self.up
    create_table :choise_variants do |t|
      t.integer :user_quetion_id
      t.integer :answer_id
      t.timestamps
    end
  end

  def self.down
    drop_table :choise_variants
  end
end

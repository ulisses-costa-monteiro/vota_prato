class CreateNomes < ActiveRecord::Migration
  def self.up
    create_table :nomes do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :nomes
  end
end

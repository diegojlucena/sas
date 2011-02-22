#coding: utf-8
class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :code
      t.string :name
      t.string :brand
      t.string :model
      t.decimal :buy_price, :precision => 8, :scale => 2
      t.string :status, :default => "Em uso"

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end

class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :hostname
      t.string :description
      t.text :ipv4s
      t.text :ipv6s
      t.boolean :show
      t.string :country
      t.string :state
      t.string :provider
      t.string :asn
      t.datetime :last_checked

      t.timestamps
    end
  end
end

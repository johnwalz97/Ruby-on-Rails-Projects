class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.text :secret
      t.references :user, index: true

      t.timestamps
    end
  end
end

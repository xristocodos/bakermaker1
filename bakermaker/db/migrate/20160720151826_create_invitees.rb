class CreateInvitees < ActiveRecord::Migration[5.0]
  def change
    create_table :invitees do |t|
      t.string :email
      t.string :token
      t.string :invitee
      t.integer :invited_by_id

      t.timestamps
    end
  end
end

class RenameInviteeInviteeToInviteeName < ActiveRecord::Migration[5.0]
  def change
    rename_column :invitees, :invitee, :name
  end
end

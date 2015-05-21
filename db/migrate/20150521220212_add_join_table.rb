class AddJoinTable < ActiveRecord::Migration
  def change
    create_table(:friendings) do |t|
      t.column(:friend_id, :int)
      t.column(:friender_id, :int)
    end

  end
end

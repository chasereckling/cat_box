class AddNaparea < ActiveRecord::Migration
  def change
    add_column(:cats, :naparea, :string)

  end
end

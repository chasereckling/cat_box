class AddColumnsToCats < ActiveRecord::Migration
  def change
    add_column(:cats, :location, :varchar)
    add_column(:cats, :birthday, :varchar)
    add_column(:cats, :relationship, :varchar)

  end
end

class NameWinsLoss < ActiveRecord::Migration
  def change
    create_table (:cats) do |t|
      t.column(:name, :string)
      t.column(:wins, :int)
      t.column(:loss, :int)
      t.timestamps()
    end
  end
end

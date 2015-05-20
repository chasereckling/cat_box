class AddsQuoteSection < ActiveRecord::Migration
  def change
    add_column(:cats, :quote, :text)
  end
end

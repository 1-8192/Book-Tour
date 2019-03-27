class RemoveTripYear < ActiveRecord::Migration[5.2]
  def change
    remove_column :reading_lists, :trip_year
  end
end

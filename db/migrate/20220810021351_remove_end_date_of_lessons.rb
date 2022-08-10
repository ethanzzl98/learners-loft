class RemoveEndDateOfLessons < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :end_time
  end
end

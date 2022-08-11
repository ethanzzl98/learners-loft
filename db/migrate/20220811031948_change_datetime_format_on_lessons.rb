class ChangeDatetimeFormatOnLessons < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :start_time
    remove_column :lessons, :end_time
    add_column :lessons, :start_time, :datetime
    add_column :lessons, :end_time, :datetime
  end
end

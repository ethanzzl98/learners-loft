class AddColumnsOfLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :icon_url, :string
    add_column :lessons, :start_date, :date
    remove_column :lessons, :start_time
    add_column :lessons, :start_time, :time
    add_column :lessons, :end_time, :time
  end
end

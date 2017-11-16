class AddColorToDashboard < ActiveRecord::Migration[5.1]
  def change
    add_column :dashboards, :color, :string
  end
end

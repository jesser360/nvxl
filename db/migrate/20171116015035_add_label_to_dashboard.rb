class AddLabelToDashboard < ActiveRecord::Migration[5.1]
  def change
    add_column :dashboards, :label, :string
    add_column :dashboards, :value, :integer
  end
end

class ChangeTypeToTypeAdToAdverts < ActiveRecord::Migration[6.0]
  def change
    rename_column :adverts, :type, :type_ad
  end
end

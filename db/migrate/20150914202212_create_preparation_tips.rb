class CreatePreparationTips < ActiveRecord::Migration
  def change
    create_table :preparation_tips do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

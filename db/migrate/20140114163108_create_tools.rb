class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :title
      t.string :title_link
      t.string :owned_by
      t.text :purpose
      t.string :added_by
      t.date :added_on
      t.text :outdated

      t.timestamps
    end
  end
end

class AddFileToSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :file, :string
  end
end

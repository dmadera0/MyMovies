class AddVoteCountToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :vote_count, :integer
  end
end

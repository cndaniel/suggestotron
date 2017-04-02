class AddVotesCountToTopic < ActiveRecord::Migration[5.0]
  def change
    add_column:topics, :votes_count, :integer, default: 0

    Topic.pluck(:id).each do |i|
      Topic.reset_counters(i, :votes)
    end
  end
end

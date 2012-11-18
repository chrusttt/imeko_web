class AddSpeakerToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :speaker, :boolean
  end
end

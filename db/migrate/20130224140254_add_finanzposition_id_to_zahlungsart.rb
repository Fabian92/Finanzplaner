class AddFinanzpositionIdToZahlungsart < ActiveRecord::Migration
  def change
	add_column :finanzpositions, :zahlungsart_id, :integer
  end
end

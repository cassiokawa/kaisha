class RemoveCompanyFromInvoices < ActiveRecord::Migration
  def change
  	remove_column :invoices, :company, :string
  	add_column :invoices, :company_id, :integer
  end
end

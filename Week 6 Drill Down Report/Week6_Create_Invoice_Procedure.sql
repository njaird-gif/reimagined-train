
-- Select rows in the Invoice table with the same TermsID the user inputs.
-- If no TermsID is chosen select all rows.

create or alter proc spInvoiceTerms
	@TermsID int = null
as
if @TermsID is not null
	select *
	from Invoices
	where TermsID = @TermsID;
else
	select *
	from Invoices;
go
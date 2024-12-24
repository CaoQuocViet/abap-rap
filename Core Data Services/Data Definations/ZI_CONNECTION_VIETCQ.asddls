@AbapCatalog.sqlViewName: 'ZCVIETCQ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection Views CDS Data Model'
define view ZI_Connection_vietcq as select from zorders_table
{
    key row_id as OrderRowId,
    order_id as OrderId,
    order_date as OrderDate,
    ship_date as ShipDate,
    ship_mode as ShipMode,
    customer_id as CustomerId,
    customer_name as CustomerName,
    segment as Segment,
    country as Country,
    city as City,
    state as State,
    postal_code as PostalCode,
    region as Region,
    product_id as ProductId,
    category as Category,
    sub_category as SubCategory,
    product_name as ProductName,
    sales as Sales,
    last_updated as LastUpdated
}

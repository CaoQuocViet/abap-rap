@AbapCatalog.sqlViewName: 'ZCVIETCQ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection Views CDS Data Model'
define view ZI_Connection_vietcq as select from zorders_table
{
    // @UI.lineItem: [{
    //     qualifier: '',
    //     position: ,
    //     actionGroupId: '',
    //     exclude: true,
    //     hidden: true,
    //     inline: true,
    //     determining: true,
    //     importance: ,
    //     emphasized: true,
    //     isPartOfPreview: true,
    //     cssDefault: {
    //         width: ''
    //     },
    //     type: #STANDARD,
    //     label: '',
    //     iconUrl: '',
    //     criticality: '',
    //     criticalityRepresentation: #WITHOUT_ICON,
    //     dataAction: '',
    //     isCopyAction: true,
    //     navigationAvailable: true,
    //     requiresContext: true,
    //     invocationGrouping: #ISOLATED,
    //     semanticObject: '',
    //     semanticObjectAction: '',
    //     semanticObjectBinding: [{
    //         localParameter: '',
    //         localElement: '',
    //         element: ''
    //     }],
    //     value: '',
    //     valueQualifier: '',
    //     targetElement: '',
    //     url: ''
    // }]
    @UI.lineItem: [ { position: 10, label: 'Order Row Id' } ]
    key row_id as OrderRowId,
    @UI.lineItem: [ { position: 20, label: 'Order Id' } ]
    order_id as OrderId,
    @UI.lineItem: [ { position: 30, label: 'Order Date' } ]
    order_date as OrderDate,
    @UI.lineItem: [ { position: 40, label: 'Ship Date' } ]
    ship_date as ShipDate,
    @UI.lineItem: [ { position: 50, label: 'Ship Mode' } ]
    ship_mode as ShipMode,
    @UI.lineItem: [ { position: 60, label: 'Customer Id' } ]
    customer_id as CustomerId,
    @UI.lineItem: [ { position: 70, label: 'Customer Name' } ]
    customer_name as CustomerName,
    @UI.lineItem: [ { position: 80, label: 'Segment' } ]
    segment as Segment,
    @UI.lineItem: [ { position: 85, label: 'Country' } ]
    country as Country,
    @UI.lineItem: [ { position: 90, label: 'City' } ]
    city as City,
    @UI.lineItem: [ { position: 100, label: 'State' } ]
    state as State,
    @UI.lineItem: [ { position: 110, label: 'Postal Code' } ]
    postal_code as PostalCode,
    @UI.lineItem: [ { position: 120, label: 'Region' } ]
    region as Region,
    @UI.lineItem: [ { position: 130, label: 'Product Id' } ]
    product_id as ProductId,
    @UI.lineItem: [ { position: 140, label: 'Category' } ]
    category as Category,
    @UI.lineItem: [ { position: 150, label: 'Sub Category' } ]
    sub_category as SubCategory,
    @UI.lineItem: [ { position: 160, label: 'Product Name' } ]
    product_name as ProductName,
    @UI.lineItem: [ { position: 170, label: 'Sales' } ]
    sales as Sales,
    @UI.lineItem: [ { position: 180, label: 'Udate date' } ]
    last_updated as LastUpdated
}

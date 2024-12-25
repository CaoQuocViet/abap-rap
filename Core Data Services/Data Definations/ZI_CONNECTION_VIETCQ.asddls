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
    @UI.facet: [ {  purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    position: 10,
                    label: 'Connection Details' } ]
    @UI.identification: [ { position: 10, label: 'Order Row Id' } ]
    @UI.lineItem: [ { position: 10, label: 'Order Row Id' } ]
    key row_id as OrderRowId,

    @UI.identification: [ { position: 20, label: 'Order Id' } ]
    @UI.lineItem: [ { position: 20, label: 'Order Id' } ]
    order_id as OrderId,

    @UI.identification: [ { position: 30, label: 'Order Date' } ]
    @UI.lineItem: [ { position: 30, label: 'Order Date' } ]
    order_date as OrderDate,

    @UI.identification: [ { position: 40, label: 'Ship Date' } ]
    @UI.lineItem: [ { position: 40, label: 'Ship Date' } ]
    ship_date as ShipDate,

    @UI.identification: [ { position: 50, label: 'Ship Mode' } ]
    @UI.lineItem: [ { position: 50, label: 'Ship Mode' } ]
    ship_mode as ShipMode,

    @UI.identification: [ { position: 60, label: 'Customer Id' } ]
    @UI.lineItem: [ { position: 60, label: 'Customer Id' } ]
    customer_id as CustomerId,

    @UI.identification: [ { position: 70, label: 'Customer Name' } ]
    @UI.lineItem: [ { position: 70, label: 'Customer Name' } ]
    customer_name as CustomerName,

    @UI.identification: [ { position: 80, label: 'Segment' } ]
    @UI.lineItem: [ { position: 80, label: 'Segment' } ]
    segment as Segment,

    @UI.identification: [ { position: 85, label: 'Country' } ]
    @UI.lineItem: [ { position: 85, label: 'Country' } ]
    country as Country,

    @UI.identification: [ { position: 90, label: 'City' } ]
    @UI.lineItem: [ { position: 90, label: 'City' } ]
    city as City,

    @UI.identification: [ { position: 100, label: 'State' } ]
    @UI.lineItem: [ { position: 100, label: 'State' } ]
    state as State,

    @UI.identification: [ { position: 110, label: 'Postal Code' } ]
    @UI.lineItem: [ { position: 110, label: 'Postal Code' } ]
    postal_code as PostalCode,

    @UI.identification: [ { position: 120, label: 'Region' } ]
    @UI.lineItem: [ { position: 120, label: 'Region' } ]
    region as Region,

    @UI.identification: [ { position: 130, label: 'Product Id' } ]
    @UI.lineItem: [ { position: 130, label: 'Product Id' } ]
    product_id as ProductId,

    @UI.identification: [ { position: 140, label: 'Category' } ]
    @UI.lineItem: [ { position: 140, label: 'Category' } ]
    category as Category,

    @UI.identification: [ { position: 150, label: 'Sub Category' } ]
    @UI.lineItem: [ { position: 150, label: 'Sub Category' } ]
    sub_category as SubCategory,

    @UI.identification: [ { position: 160, label: 'Product Name' } ]
    @UI.lineItem: [ { position: 160, label: 'Product Name' } ]
    product_name as ProductName,

    @UI.identification: [ { position: 170, label: 'Sales' } ]
    @UI.lineItem: [ { position: 170, label: 'Sales' } ]
    sales as Sales,

    @UI.identification: [ { position: 180, label: 'Udate date' } ]
    @UI.lineItem: [ { position: 180, label: 'Udate date' } ]
    last_updated as LastUpdated
}

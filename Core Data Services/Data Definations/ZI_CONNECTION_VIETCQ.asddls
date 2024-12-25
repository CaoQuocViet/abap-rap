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
    @UI.chart: {
        type: #COLUMN,
        label: 'Sales by Category',
        measure: [{ value: Sales }],
        dimension: [{ value: Category }]
    }
    
    @UI.facet: [ {
        qualifier: 'ConnectionDetails',
        purpose: #STANDARD,
        type: #IDENTIFICATION_REFERENCE,
        position: 10,
        label: 'Connection Details'
    } ]

    @UI.fieldGroup: [{
        qualifier: 'ConnectionDetails'
    }]

    key row_id as OrderRowId,

    @UI.identification: [ {
        position: 20,
        label: 'Order Id'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    order_id as OrderId,

    @UI.identification: [ {
        position: 30,
        label: 'Order Date'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    order_date as OrderDate,

    @UI.identification: [ {
        position: 40,
        label: 'Ship Date'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    ship_date as ShipDate,

    @UI.identification: [ {
        position: 50,
        label: 'Ship Mode'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    ship_mode as ShipMode,

    @UI.identification: [ {
        position: 60,
        label: 'Customer Id'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    customer_id as CustomerId,

    @UI.identification: [ {
        position: 70,
        label: 'Customer Name'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    customer_name as CustomerName,

    @UI.identification: [ {
        position: 80,
        label: 'Segment'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    segment as Segment,

    @UI.identification: [ {
        position: 85,
        label: 'Country'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    country as Country,

    @UI.identification: [ {
        position: 90,
        label: 'City'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    city as City,

    @UI.identification: [ {
        position: 100,
        label: 'State'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    state as State,

    @UI.identification: [ {
        position: 110,
        label: 'Postal Code'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    postal_code as PostalCode,

    @UI.identification: [ {
        position: 120,
        label: 'Region'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    region as Region,

    @UI.identification: [ {
        position: 130,
        label: 'Product Id'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    product_id as ProductId,

    @UI.identification: [ {
        position: 140,
        label: 'Category'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    category as Category,

    @UI.identification: [ {
        position: 150,
        label: 'Sub Category'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    sub_category as SubCategory,

    @UI.identification: [ {
        position: 160,
        label: 'Product Name'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    product_name as ProductName,

    @UI.identification: [ {
        position: 170,
        label: 'Sales'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    sales as Sales,

    @UI.identification: [ {
        position: 180,
        label: 'Update Date'
    } ]
    @UI.fieldGroup: [ { qualifier: 'ConnectionDetails' } ]
    last_updated as LastUpdated
}
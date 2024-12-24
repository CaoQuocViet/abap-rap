@EndUserText.label : 'Table for business dashboard'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zorders_table {
  key client    : abap.clnt not null;
  key row_id    : abap.numc(10) not null;
  order_id      : abap.char(20);
  order_date    : abap.dats;
  ship_date     : abap.dats;
  ship_mode     : abap.char(20);
  customer_id   : abap.char(10);
  customer_name : abap.char(50);
  segment       : abap.char(20);
  country       : abap.char(30);
  city          : abap.char(30);
  state         : abap.char(30);
  postal_code   : abap.char(10);
  region        : abap.char(20);
  product_id    : abap.char(15);
  category      : abap.char(20);
  sub_category  : abap.char(20);
  product_name  : abap.char(50);
  sales         : abap.dec(15,2);
  @EndUserText.label : 'Timestamp for last update'
  last_updated  : abap.tims;

}
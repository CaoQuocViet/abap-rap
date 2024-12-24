import csv
from datetime import datetime

def clean_value(value):
    """Remove ", ', and ` characters from the input string."""
    return value.replace('"', '').replace("'", "").replace('`', '')

def convert_csv_to_abap(input_csv='train.csv', output_txt='insert_business_data.abap'):
    with open(input_csv, 'r', encoding='utf-8') as csvfile, open(output_txt, 'w', encoding='utf-8') as txtfile:
        # Add the initial ABAP declarations
        txtfile.write("REPORT ZUPLOAD_CSV_TO_DB.\n\n")
        txtfile.write("DATA: lt_orders TYPE TABLE OF zorders_table,\n")
        txtfile.write("      ls_order TYPE zorders_table.\n\n")
        txtfile.write("START-OF-SELECTION.\n\n")
        
        reader = csv.DictReader(csvfile)
        row_id = 1
        for row in reader:
            order_date = datetime.strptime(row['Order Date'], '%d/%m/%Y').strftime('%Y-%m-%d')
            ship_date = datetime.strptime(row['Ship Date'], '%d/%m/%Y').strftime('%Y-%m-%d')
            txtfile.write(f'" Row {row_id}\n')
            txtfile.write('CLEAR ls_order.\n')
            txtfile.write("ls_order-client = '100'.\n")
            txtfile.write(f"ls_order-row_id = '{row_id + 1}'.\n")
            txtfile.write(f"ls_order-order_id = '{clean_value(row['Order ID'])}'.\n")
            txtfile.write(f"ls_order-order_date = '{order_date}'.\n")
            txtfile.write(f"ls_order-ship_date = '{ship_date}'.\n")
            txtfile.write(f"ls_order-ship_mode = '{clean_value(row['Ship Mode'])}'.\n")
            txtfile.write(f"ls_order-customer_id = '{clean_value(row['Customer ID'])}'.\n")
            txtfile.write(f"ls_order-customer_name = '{clean_value(row['Customer Name'])}'.\n")
            txtfile.write(f"ls_order-segment = '{clean_value(row['Segment'])}'.\n")
            txtfile.write(f"ls_order-country = '{clean_value(row['Country'])}'.\n")
            txtfile.write(f"ls_order-city = '{clean_value(row['City'])}'.\n")
            txtfile.write(f"ls_order-state = '{clean_value(row['State'])}'.\n")
            txtfile.write(f"ls_order-postal_code = '{clean_value(row['Postal Code'])}'.\n")
            txtfile.write(f"ls_order-region = '{clean_value(row['Region'])}'.\n")
            txtfile.write(f"ls_order-product_id = '{clean_value(row['Product ID'])}'.\n")
            txtfile.write(f"ls_order-category = '{clean_value(row['Category'])}'.\n")
            txtfile.write(f"ls_order-sub_category = '{clean_value(row['Sub-Category'])}'.\n")
            txtfile.write(f"ls_order-product_name = '{clean_value(row['Product Name'])}'.\n")
            txtfile.write(f"ls_order-sales = '{clean_value(row['Sales'])}'.\n")
            txtfile.write("ls_order-last_updated = '2024-12-23 12:00:00'.\n")
            txtfile.write("APPEND ls_order TO lt_orders.\n\n")
            row_id += 1
        
        # Add the final ABAP insertion logic
        txtfile.write('" Chèn toàn bộ dữ liệu vào bảng ZORDERS_TABLE\n')
        txtfile.write("LOOP AT lt_orders INTO ls_order.\n")
        txtfile.write("  INSERT zorders_table FROM ls_order.\n")
        txtfile.write("  IF sy-subrc <> 0.\n")
        txtfile.write("    WRITE: / 'Error inserting row with Row ID:', ls_order-row_id.\n")
        txtfile.write("  ENDIF.\n")
        txtfile.write("ENDLOOP.\n\n")
        txtfile.write("WRITE: / 'Data successfully uploaded to database table'.\n")

if __name__ == '__main__':
    convert_csv_to_abap()
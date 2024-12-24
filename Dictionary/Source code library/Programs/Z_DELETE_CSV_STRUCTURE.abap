*&---------------------------------------------------------------------*
*& Report z_delete_csv_structure
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_delete_csv_structure.

DATA: lv_row_id TYPE zorders_table-row_id.

lv_row_id = '1'.  " Giả sử bạn muốn xóa bản ghi có ROW_ID = 1

DELETE FROM zorders_table
  WHERE row_id = lv_row_id.

IF sy-subrc = 0.
  WRITE: / 'Record deleted successfully'.
ELSE.
  WRITE: / 'No record found to delete'.
ENDIF.
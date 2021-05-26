# dvv_mon (monitor class)
������ ���� �������� �������� �������� ������ �������� ����������/��������/����������.

���������:
```Verilog
class dvv_mon #(type seq_type) extends dvv_bc;
```

## ��������� ������:

| ����      | ��������                  |
| --------- | ------------------------- |
| seq_type  | ��� ���������� ��� ������ |

## ���� � �������/������ ������  

������ ����� ��������� ���� � �������/������ �� �������� ������ ����������� [dvv_bc.md](dvv_bc.md).

### ����:

| ���       | ���                   | ��������                      |
| --------- | --------------------- | ----------------------------- |
| item_sock | dvv_sock #(seq_type)  | ����� ������ ����� dvv_sock   |
| item_aep  | dvv_aep #(seq_type)   | ����� ������ ����� dvv_aep    |

#### �������� ��������� �����:

| ����      | ��������  |
| --------- | --------- |
| type_name | "dvv_mon" |

### �������/������:
����� �������� ��������� �������/������:
| ���       | ��������                              |
| --------- | ------------------------------------- |
| new       | ����������� ������                    |

### �������� �������/�����:

#### new
����������� ������ ��� �������� ���������� dvv_mon.

���������:
```Verilog
function new(string name = "", dvv_bc parent = null);
```

���������:
| ���       | ���       | ��������                  |
| --------- | --------- | ------------------------- |
| name      | string    | ��� ����������            |
| parent    | dvv_bc    | ��������� ������ �������� |

## �������������

������ ����� ������������ ����� ������������. ��������� ������� ������ ��� ������� ����������/��������. ����� ����� ������ ��������� ������������ ��� �������� ������ � ���� ������ ��������� �������� (������� ������ dvv_scr).
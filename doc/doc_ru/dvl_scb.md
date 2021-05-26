# dvv_scb (scoreboard class)

������ ���� �������� �������� ������ ������������ �� ������ ����������� ������������.

���������:
```Verilog
class dvv_scb extends dvv_bc;
```

## ���� � �������/������ ������  

������ ����� ��������� ���� � �������/������ �� �������� ������ ����������� [dvv_bc.md](dvv_bc.md).

### ����:

#### �������� ��������� �����:

| ����      | ��������  |
| --------- | --------- |
| type_name | "dvv_scb" |

### �������/������:
| ���       | ��������                                |
| --------- | --------------------------------------- |
| new       | ����������� ������                      |

### �������� �������/�����:

#### new
����������� ������ ��� �������� ���������� dvv_scb.

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

������ ����� ������������ ����� ������������. ��������� ������� ������ ������ ��� ������� ����������� ���������, ����������� ��������� ����� ����� ���������� ������� ������.
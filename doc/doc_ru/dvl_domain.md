# dvv_domain (domain class)
������ ���� �������� �������� ������ ������.

���������:
```Verilog
class dvv_domain extends dvv_bc;
```

## ���� � �������/������ ������  

������ ����� ��������� ���� � �������/������ �� �������� ������ ����������� [dvv_bc.md](dvv_bc.md).

### ����:

| ���       | ���           | ��������                      |
| --------- | ------------- | ----------------------------- |
| phase_q   | dvv_phase [$] | ������� ��� ���������� �����  |

#### �������� ��������� �����:

| ����      | ��������      |
| --------- | ------------- |
| type_name | "dvv_domain"  |

### �������/������:
����� �������� ��������� �������/������:
| ���           | ��������                                      |
| ------------- | --------------------------------------------- |
| new           | ����������� ������                            |
| add_phase     | ������ ��� ���������� ����                    |
| add_phases    | ������ ��� ���������� ������������ ������ ��� |
| exec          | ������ ��� ���������� ���                     |

### �������� �������/�����:

#### new
����������� ������ ��� �������� ���������� dvv_domain.

���������:
```Verilog
function new(string name = "", dvv_bc parent = null);
```

���������:
| ���       | ���       | ��������                  |
| --------- | --------- | ------------------------- |
| name      | string    | ��� ����������            |
| parent    | dvv_bc    | ��������� ������ �������� |

#### add_phase
������ ��� ���������� ����.

���������:
```Verilog
task add_phase(dvv_phase phase);
```

���������:
| ���   | ���       | ��������              |
| ----- | --------- | --------------------- |
| phase | dvv_phase | ���� ��� ����������   |

#### add_phases
������ ��� ���������� ������������ ������ ���.

���������:
```Verilog
task add_phases();
```

#### exec
������ ��� ���������� ���.

���������:
```Verilog
task exec();
```
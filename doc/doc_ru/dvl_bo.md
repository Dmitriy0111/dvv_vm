# dvv_bo (base object)

������ ���� �������� �������� �������� ������� ��������������� �����������.

���������:
```Verilog
class dvv_bo;
```

## ���� � �������/������ ������ 

### ����:
| ���          | ���           | ��������                                                        |
| ------------ | ------------- | --------------------------------------------------------------- |
| name         | string        | ��� ���������� ������                                           |
| fname        | string        | ������ ��� ���������� ������ � ��������� �������������� ����    |
| run_drop     | static int    | ������� ����������� �������� ���������                          |
| parent       | dvv_bo        | ��������� �� ��������� ������ ��������                          |
| level        | int           | ������������� ������� ���������� ������                         |
| fp           | static int    | ��������� �� ���� ��� ������ ������� ����� ��� ���� �������     |
| write2file   | bit           | ���������� ��� ������ ������ � ���� ������                      |
| write2stdout | bit           | ���������� ��� ������ ������ � ��������                         |
| type_names   | static dvv_bo | ������� ���������� ���� ���� ������� ����������� � ������������ |

#### �������� ��������� �����:

| ����      | ��������  |
| --------- | --------- |
| type_name | "dvv_bo"  |

### �������/������:
| ���          | ��������                                                              |
| ------------ | --------------------------------------------------------------------- |
| new          | ����������� ������                                                    |
| file_write   | ������ ��� ������ ���������/������ � ����                             |
| stdout_write | ������ ��� ������ ���������/������ � ��������                         |
| print        | ������ ���������� file_write � stdout_write � ����������� �� �������� |
| raise        | ������ ������������� ������� run_drop                                 |
| drop         | ������ ����������� ������� run_drop                                   |

### �������� �������/�����:

#### new
����������� ������ ��� �������� ���������� dvv_ap.

���������:
```Verilog
function new(string name = "", dvv_bo parent = null);
```

���������:
| ���       | ���       | ��������                  |
| --------- | --------- | ------------------------- |
| name      | string    | ��� ����������            |
| parent    | dvv_bo    | ��������� �������� ������ |

#### file_write
������ ������������ ��� ������ ���������/������ � ����.

���������:
```Verilog
task file_write(string msg);
```

���������:
| ���   | ���       | ��������                      |
| ----- | --------- | ----------------------------- |
| msg   | string    | ��������� ���������� ������   |

#### stdout_write
������ ������������ ��� ������ ���������/������ � ��������.

���������:
```Verilog
task stdout_write(string msg);
```

���������:
| ���   | ���       | ��������                      |
| ----- | --------- | ----------------------------- |
| msg   | string    | ��������� ���������� ������   |

#### print
������ ���������� file_write � stdout_write � ����������� �� ���������� write2file � write2stdout.

���������:
```Verilog
task print(string msg = "");
```

���������:
| ���   | ���       | ��������                      |
| ----- | --------- | ----------------------------- |
| msg   | string    | ��������� ���������� ������   |

#### raise
������ ������������� ������� run_drop. ������������ ��� ���������� ���������� ���� run_phase. ���� �� ���� ��������������� ��������� �� ������� ������� raise, �� ���� ���������� � ��������� ���������� ��� clean_up � report.

���������:
```Verilog
task raise();
```

#### drop
������ ������������� ������� run_drop. ������������ ��� ������������� ���������� ���� run_phase.

���������:
```Verilog
task drop();
```

## �������������� ����������

������� �������� ��������� �����
* name = "i2c_monitor"
* fname = "i2c_test.i2c_enviroment.i2c_agent.i2c_monitor"
* level = 3
* type_names = { "i2c_test" : i2c_test , "i2c_enviroment" : i2c_enviroment , "i2c_agent" : i2c_agent , "i2c_monitor" : i2c_monitor , ... }
* parent = i2c_agent

���� type_names ������������ ��� �������� �������� ���������������� ������ ��� ������ ������� run_test(). � ������� ���� ������� ��������������� ������� �������� i2c_test.
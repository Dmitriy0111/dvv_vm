# dvv_bc (base class)

������ ���� �������� �������� �������� ������ ��������������� �����������. 

���������:
```Verilog
class dvv_bc extends dvv_bo;
```

## ���� � �������/������ ������ 

������ ����� ��������� ���� � �������/������ �� �������� ������� [dvv_bo.md](dvv_bo.md).

### ����:
| ���          | ���           | ��������                                                                     |
| ------------ | ------------- | ---------------------------------------------------------------------------- |
| child_l      | dvv_bc [$]    | ������ �������� �������                                                      |
| type_bc      | static dvv_bc | ������������� ������ ���������� ���� ���� ������� ����������� � ������������ |
| test         | static dvv_bc | ����� �������� ������ ����� ��� ���� �������� �������                        |
| test_comps   | dvv_bc        | ������� ���������� ��� ��������������� ���������� ����������� � ������������ |

#### �������� ��������� �����:

| ����      | ��������  |
| --------- | --------- |
| type_name | "dvv_bc"  |

### �������/������:
| ���           | ��������                                                          |
| ------------- | ----------------------------------------------------------------- |
| new           | ����������� ������                                                |
| add_child     | ������ ��� ���������� ��������� ������                            |
| build         | ������ �������� ��� ���������� ��������� ������                   |
| connect       | ������ �������� ��� ���������� ����������� ��������� ������       |
| run           | ������ ���������� �� ���������� ���������                         |
| clean_up      | ������ �������� ��� ������� �������� ����� ��������� ���������    |
| report        | ������ �������� ��� ������ ������� �� ����������� ���������       |
| print_map     | ������ �������� ��� ������ �������������� ������������� �����     |
| print_childs  | ������ �������� ��� ������ ������ �������� �������                |
| get_type_name | ������� �������� ��� ��������� ���������� ����� ���� ������       |
| create_obj    | ������� �������� ��� �������� ���������� ������                   |

### �������� �������/�����:

#### new
����������� ������ ��� �������� ���������� dvv_bc.

���������:
```Verilog
function new(string name = "", dvv_bc parent = null);
```

���������:
| ���       | ���       | ��������                  |
| --------- | --------- | ------------------------- |
| name      | string    | ��� ����������            |
| parent    | dvv_bc    | ��������� ������ �������� |

#### add_child
������ ��� ���������� ��������� ������ � ������� child_l.

���������:
```Verilog
task add_child(dvv_bc child);
```

���������:
| ���       | ���       | ��������                      |
| --------- | --------- | ----------------------------- |
| child     | dvv_bc    | ��������� ��������� ������    |

#### build
������ ����������� ��� ��������� ���� build_phase.

���������:
```Verilog
virtual task build();
```

#### connect
������ ����������� ��� ��������� ���� connect_phase.

���������:
```Verilog
virtual task connect();
```

#### run
������ ����������� ��� ��������� ���� run_phase.

���������:
```Verilog
virtual task run();
```

#### clean_up
������ ����������� ��� ��������� ���� clean_up_phase.

���������:
```Verilog
virtual task clean_up();
```

#### report
������ ����������� ��� ��������� ���� report_phase.

���������:
```Verilog
virtual task report();
```

#### print_map
������ �������� ��� ������ �������������� ������������� �����.

���������:
```Verilog
task print_map();
```

#### print_childs
������ �������� ��� ������ ������ �������� �������.

���������:
```Verilog
task print_childs();
```

#### get_type_name
������� �������� ��� ��������� ���������� ����� ���� ������.

���������:
```Verilog
virtual function string get_type_name();
```

#### create_obj
������� �������� ��� �������� ���������� ������.

���������:
```Verilog
virtual function dvv_bc create_obj(string name, dvv_bc parent);
```
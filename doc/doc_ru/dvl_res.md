# dvl_res (resource class)

Данный файл содержит описание класса ресурсов. Класс dvl_res используется только в dvl_res_db.

Заголовок:
```Verilog
class dvl_res #(type res_t);
```

## Параметры класса:

| Поле      | Описание      |
| --------- | ------------- |
| res_t     | Тип ресурса   |

## Поля и функции/задачи класса 

### Поля:
| Имя       | Тип       | Описание                          |
| --------- | --------- | --------------------------------- |
| res_val   | res_t     | Значение ресурса с заданным типом |
| res_name  | string    | Имя ресурса                       |

#### Значение некоторых полей:

| Поле      | Значение  |
| --------- | --------- |
| type_name | "dvl_res" |

### Функции/Задачи:
| Имя   | Описание              |
| ----- | --------------------- |
| new   | Конструктор класса    |

### Описание функций/задач:

#### new
Конструктор класса для создания экземпляра dvl_res.

Заголовок:
```Verilog
function new(string res_name = "", res_t res_val = null);
```

Аргументы:
| Имя       | Тип       | Описание          |
| --------- | --------- | ----------------- |
| res_name  | string    | Имя ресурса       |
| res_val   | res_t     | Значение ресурса  |

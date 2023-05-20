#!/bin/bash 

../student_sort.sh -t 8 -f test_data/test.txt -o test_res.txt
diff test_data/output test_res.txt
if [[ $? -eq 0 ]]
then
    echo "тест на проверку выхода данных прошел успешно"
else
    echo "тест на проверку выхода данных не прошел успешно"
fi

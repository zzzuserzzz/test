# test

 Для запуска необходимо установить vagrant, ansible.

Команды для создания пакета и установки:
1. git clone https://github.com/zzzuserzzz/test.git &&  cd test/
2. vagrant up

Команды для тестирования:
Первый тест:
1. vagrant upload test.sh
2. vagrant ssh
3. ./test.sh
4. exit

Второй тест:
1. git clone https://github.com/phunt/zk-smoketest.git && cd zk-smoketest
2. apt-get install python-dev
3. apt-get install libzookeeper-mt-dev
4. pip install zkpython
5. PYTHONPATH=lib.linux-x84_64-2.6 LD_LIBRARY_PATH=lib.linux-x86_64-2.6 ./zk-smoketest.py --servers "127.0.0.1:2181"

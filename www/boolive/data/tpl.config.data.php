<?php
/**
 * Конфигурация хранилищ данных
 * Хранилище определяется совпадением ключа хранилища с левой частью URI объекта
 * Указывается класс хранидища и параметры подключения. Ключ хранинилища - это ключ массива конфигурации
 */
$stores = array(
    // Внешнее хранилище
    'http:' => array(
        'class' => '\boolive\data\stores\HTTPStore',
        'connect' => array(
        )
    ),
    // Главное локальное хранилище
    '' => array(
        'class' => '\boolive\data\stores\MySQLStore',
        'connect' => array(
            // Имя источника данных
            'dsn' => array(
                // Тип СУБД
                'driver' => 'mysql',
                // Имя базы данных
                'dbname' => '{dbname}',
                // Адрес сервера
                'host' => '{host}',
                // Порт
                'port' => '{port}'
            ),
            // Имя пользователя для подключения к базе данных
            'user' => '{user}',
            // Пароль
            'password' => '{password}',
            // Опции подключения
            'options' => array(
                PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES "utf8" COLLATE "utf8_bin"'
            ),
            // Префикс к таблицам
            'prefix' => '',
            // Признаки, включен или нет режим отладки. В режиме отладки трассируются запросы и подсчитывается их кол-во
            'trace_sql' => false,
            'trace_count' => false,
        )
    )
);
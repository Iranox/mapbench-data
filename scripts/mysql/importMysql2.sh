#!/bin/bash
cd /bsbm/data/benchmark/sql
mysql -u root --password=${MYSQL2_1_ENV_MYSQL_ROOT_PASSWORD}  -h ${MYSQL2_1_PORT_3306_TCP_ADDR} --port=${MYSQL2_1_PORT_3306_TCP_PORT}  ${MYSQL2_1_ENV_MYSQL_DATABASE} < 05ProductTypeProduct.sql
mysql -u root --password=${MYSQL2_1_ENV_MYSQL_ROOT_PASSWORD}  -h ${MYSQL2_1_PORT_3306_TCP_ADDR} --port=${MYSQL2_1_PORT_3306_TCP_PORT}  ${MYSQL2_1_ENV_MYSQL_DATABASE} < 06ProductFeatureProduct.sql
mysql -u root --password=${MYSQL2_1_ENV_MYSQL_ROOT_PASSWORD}  -h ${MYSQL2_1_PORT_3306_TCP_ADDR} --port=${MYSQL2_1_PORT_3306_TCP_PORT}  ${MYSQL2_1_ENV_MYSQL_DATABASE} < 08Offer.sql
mysql -u root --password=${MYSQL2_1_ENV_MYSQL_ROOT_PASSWORD}  -h ${MYSQL2_1_PORT_3306_TCP_ADDR} --port=${MYSQL2_1_PORT_3306_TCP_PORT}  ${MYSQL2_1_ENV_MYSQL_DATABASE} < 09Person.sql
mysql -u root --password=${MYSQL2_1_ENV_MYSQL_ROOT_PASSWORD}  -h ${MYSQL2_1_PORT_3306_TCP_ADDR} --port=${MYSQL2_1_PORT_3306_TCP_PORT}  ${MYSQL2_1_ENV_MYSQL_DATABASE} < 10Review.sql

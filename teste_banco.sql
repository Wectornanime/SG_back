-- Active: 1686500747749@@127.0.0.1@3306@remedys

SELECT id, farmaco, detentor, medicamento, concentracao, status FROM `Medicamentos` WHERE medicamento LIKE '%ZIAGENAVIR%';

SELECT DISTINCT farmaco FROM `Medicamentos` WHERE medicamento LIKE '%RZEN%';

SELECT * FROM `Medicamentos` WHERE farmaco LIKE '%abacavir%';



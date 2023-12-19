-- Active: 1686500747749@@127.0.0.1@3306@remedys


CREATE DATABASE IF NOT EXISTS remedys;

USE remedys;

CREATE TABLE Medicamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmaco VARCHAR(45),
    detentor VARCHAR(45),
    medicamento VARCHAR(45),
    concentracao VARCHAR(20),
    status ENUM('ativo', 'inativo')
);

INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, status) VALUES
('abacavir (sulfato)', 'Glaxosmithkline', 'ZIAGENAVIR', '20 mg/mL', 'ativo'),
('abacavir (sulfato)', 'Glaxosmithkline', 'ZIAGENAVIR', '300 mg', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '50mg', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '100mg', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '150mg', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '200mg', 'ativo'),
('abiraterona (acetato)', 'Janssen-Cilag', 'ZYTIGA', '250mg', 'ativo'),
('abiraterona (acetato)', 'Janssen-Cilag', 'ZYTIGA', '500mg', 'ativo'),
('acalabrutinibe', 'Astrazeneca', 'CALQUENCE', '100mg', 'ativo'),
('acebrofilina', 'Aché', 'BRONDILAT', '5mg/mL', 'ativo'),
('acebrofilina', 'Aché', 'BRONDILAT', '10 mg/mL', 'ativo'),
('acebrofilina', 'Eurofarma', 'FILINAR G', '5mg/ml', 'ativo'),
('aceclofenaco', 'Eurofarma', 'PROFLAM', '100mg', 'ativo'),
('aceclofenaco', 'Eurofarma', 'PROFLAM', '15mg/g', 'ativo'),
('acetato de fluormetolona', 'Novartis Biociências', 'FLORATE', '1mg/ mL', 'ativo'),
('acetato de glatiramer', 'Teva Farmacêutica', 'COPAXONE', '20mg/mL', 'ativo'),
('acetato de glatiramer', 'Teva Farmacêutica', 'COPAXONE', '40mg/mL', 'ativo'),
('acetazolamida', 'União Química', 'meto', '250 mg', 'ativo'),
('acetilcisteína', 'Eurofarma', 'ACETILCISTEÍNA',  '100mg', 'ativo'),
('acetilcisteína', 'União Química', 'FLUCISTEIN', '40mg/g', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '120mg/g', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '11,5mg/ml', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '20 mg/ml', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '40mg/ml', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '600mg', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '100mg/ml', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '200mg', 'ativo'),
('aciclovir', 'Merck', 'ACICLOVIR', '400 mg', 'ativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '200 mg', 'ativo'),
('aciclovir', 'Teuto', 'ACICLOVIR', '250mg', 'ativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '50 mg/g', 'ativo');

SELECT id, farmaco, detentor, medicamento, concentracao, status FROM `Medicamentos` WHERE medicamento LIKE '%ZIAGENAVIR%'





---------------------
-- nao executar:
---------------------

CREATE DATABASE IF NOT EXISTS seugenerico;

USE seugenerico;

CREATE TABLE Medicamentos (
    registro INT PRIMARY KEY
    farmaco VARCHAR(45) NOT NULL,
    detentor VARCHAR(45) NOT NULL,
    medicamento VARCHAR(45) NOT NULL,
    concentracao VARCHAR(20),
    status ENUM('ativo', 'inativo')
);


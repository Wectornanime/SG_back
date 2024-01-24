-- Active: 1703105093497@@127.0.0.1@3306


CREATE DATABASE IF NOT EXISTS remedys;

USE remedys;

CREATE TABLE Medicamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmaco VARCHAR(45),
    detentor VARCHAR(45),
    medicamento VARCHAR(45),
    concentracao VARCHAR(20),
    status VARCHAR(20)
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
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '50 mg/g', 'ativo'),
('ácido acetilsalicílico', 'EMS S/A', 'ÁCIDO ACETIL SALICÍLICO', '100 mg', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA', '500mg', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA', '500mg', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA PREVENT', '100mg', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA PREVENT', '300mg', 'ativo'),
('adenosina', 'Hipolabor', 'ADENOSINA', '3mg/mL', 'ativo');





INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, status) VALUES
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '100mg', 'inativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '200mg', 'inativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '0,03 g/g', 'inativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '250mg/10mL', 'inativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA BUFFERED',  '500mg', 'inativo'),
('ácido acetilsalicílico', 'Novartis Biociências', 'BUFFERIN CARDIO', '81mg', 'inativo'),
('ácido acetilsalicílico', 'Cimed', 'ÁCIDO ACETILSALICÍLICO', '100mg', 'inativo'),
('ácido acetilsalicílico', 'Medquímica', 'AS-MED', '100mg', 'inativo'),
('adenosina', 'Libbs', 'ADENOCARD', '3,0 mg/mL', 'inativo'),
('alendronato sódico', 'Merck Sharp & Dohme', 'FOSAMAX', '70 mg', 'inativo'),
('albendazol', 'Glaxosmithkline', 'ZENTEL', '200 mg', 'inativo'),
('albendazol', 'Glaxosmithkline', 'ZENTEL', '40 mg/mL', 'inativo'),
('albendazol', 'Glaxosmithkline', 'ZENTEL', '400 mg', 'inativo'),
('alisquireno (hemifumarato)', 'Novartis Biociências', 'RASILEZ', '150', 'inativo'),
('alisquireno (hemifumarato)', 'Novartis Biociências', 'RASILEZ', '300mg', 'inativo'),
('alprostadil', 'EMS', 'ALPRODIL', '20μg', 'inativo'),
('amifostina', 'Schering Plough', 'ETHYOL', '500mg', 'inativo'),
('aminofilina', 'Ariston', 'MINOTON', '24mg/mL', 'inativo'),
('amiodarona (cloridrato)', 'Sanofi-Aventis', 'ATLANSIL', '50mg/ml', 'inativo'),
('amitriptilina (cloridrato)', 'Merck Sharp & Dohme', 'TRYPTANOL', '25mg', 'inativo'),
('amitriptilina (cloridrato)', 'Merck Sharp & Dohme', 'TRYPTANOL', '75mg', 'inativo');




INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, status) VALUES
('paracetamol', 'Cosmed', 'PRATIUM', '140mg/ml', 'ativo'),
('paracetamol', 'PF Consumer', 'SONRIDOR', '500mg', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL', '160mg', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL', '500mg', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL', '750mg', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL AP', '650mg', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL BEBÊ', '100mg/mL', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL CRIANÇA', '32mg/mL', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL GELCAP', '500mg', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL GOTAS', '200mg/mL', 'ativo'),
('paracetamol', 'Procter & Gamble', 'VICK PYRENA', '500mg', 'ativo'),
('paracetamol', 'Halex Istar', 'HALEXMINOPHEN', '10mg/mL', 'ativo'),
('paracetamol', 'Frenesius', 'KABIPAMOL', '10mg/ml', 'inativo'),
('fluoxetina', 'EMS Sigma Pharma', 'DAFORIN', '20mg/mL', 'ativo'),
('fluoxetina', 'EMS Sigma Pharma', 'DAFORIN', '20mg', 'ativo'),
('fluoxetina (cloridrato)', 'Eli Lilly', 'PROZAC', '20mg','inativo');






















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


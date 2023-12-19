-- Active: 1686500747749@@127.0.0.1@3306@remedys

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


--------------

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









acetilcisteína Zambon FLUIMUCIL 100840075 100mg gran 27/06/2019 Registro cancelado
acetilcisteína Zambon FLUIMUCIL 100840075 200mg gran 16/10/2020 Registro cancelado
aciclovir Glaxosmithkline ZOVIRAX 101070253 0,03 g/g pom oft 14/10/2021 Registro cancelado
aciclovir Glaxosmithkline ZOVIRAX 101070253 250mg/10mL pó liof sol inj 08/12/2023 Descontinuação definitva de
comercialização
ácido acetilsalicílico Bayer ASPIRINA BUFFERED 170560022 500mg com (tamponado) 11/09/2020 Registro cancelado
ácido acetilsalicílico Novartis Biociências BUFFERIN CARDIO 100681045 81mg com rev 02/06/2023 Registro cancelado
ácido acetilsalicílico Cimed ÁCIDO ACETILSALICÍLICO 143810104 100mg com 04/08/2023 Descontinuação definitva de
comercialização
ácido acetilsalicílico Medquímica AS-MED 109170039 100mg com 09/10/2023 Registro cancelado
adenosina Libbs ADENOCARD 100330038 3,0 mg/mL sol inj 27/08/2021 Descontinuação definitva de
comercialização
alendronato sódico Merck Sharp & Dohme FOSAMAX 100290180 70 mg(ácido alendrônico) com 30/08/2017 Comercialização suspensa
albendazol Glaxosmithkline ZENTEL 101070089 200 mg com 02/06/2023 Registro cancelado
albendazol Glaxosmithkline ZENTEL 101070089 40 mg/mL sus or 02/06/2023 Registro cancelado
albendazol Glaxosmithkline ZENTEL 101070089 400 mg com mast 09/10/2023 Descontinuação definitiva de
comercialização
alisquireno (hemifumarato) Novartis Biociências RASILEZ 100681055 150 com rev 02/06/2023 Registro cancelado
alisquireno (hemifumarato) Novartis Biociências RASILEZ 100681055 300mg com rev 02/06/2023 Registro cancelado
alprostadil EMS ALPRODIL 135690491 20μg sol inj 24/06/2013 Registro cancelado
amifostina Schering Plough ETHYOL 101710192 500mg po liof sol inj 13/01/2017 Registro cancelado
aminofilina Ariston MINOTON 189000025 24mg/mL solç inj 27/06/2017 Outro referência foi eleito
amiodarona (cloridrato) Sanofi-Aventis ATLANSIL 113001068 50mg/ml (150mg FR 3ml) sol inj 30/08/2017 Comercialização suspensa
amitriptilina (cloridrato) Merck Sharp & Dohme TRYPTANOL 100290155 25mg com rev 07/10/2013 Registro cancelado
amitriptilina (cloridrato) Merck Sharp & Dohme TRYPTANOL 100290155 75mg com rev 07/10/2013 Registro cancelado




















'ácido acetilsalicílico', 'EMS S/A', 'ÁCIDO ACETIL SALICÍLICO' 102350508 100 mg com 10/11/2023
'ácido acetilsalicílico', 'Bayer', 'ASPIRINA', 170560020 500mg com 12/11/2012
'ácido acetilsalicílico', 'Bayer', 'ASPIRINA', 170560020 500mg com efer 12/11/2012
'ácido acetilsalicílico', 'Bayer', 'ASPIRINA PREVENT', 170560022 100mg com rev lib retard 12/11/2012
'ácido acetilsalicílico', 'Bayer', 'ASPIRINA PREVENT', 170560022 300mg com rev lib retard 12/11/2012
'ácido carglúmico', 'Recordati Rare Diseases', 'CARBAGLU', 171260001 200mg com para susp 05/06/2020
'ácido tióctico', 'Mylan', 'THIOCTACID', 188300074 600mg com rev 21/01/2013
'ácido ursodesoxicólico', 'Zambon', 'URSACOL', 100840067 50mg com 23/09/2014
'ácido ursodesoxicólico', 'Zambon', 'URSACOL', 100840067 150mg com 23/09/2014
'ácido ursodesoxicólico', 'Zambon', 'URSACOL', 100840067 300mg com 23/09/2014
'ácido valpróico', 'Abbott', 'DEPAKENE', 105530315 250mg cap mole 12/11/2012
'acitretina', 'Glenmark', 'NEOTIGASON', 110130271 10mg cap dura 12/11/2012
'acitretina', 'Glenmark', 'NEOTIGASON', 110130271 25 mg cap dura 12/11/2012
'adapaleno', 'Glenmark', 'DERIVA MICRO', 110130264 1mg/g gel derm lib prol 31/10/2019
'adapaleno', 'Galderma', 'DIFFERIN', 129160025 1,0 mg/g gel 12/11/2012
'adapaleno', 'Galderma', 'DIFFERIN', 129160025 3,0 mg/g gel 12/11/2012
'adapaleno', 'Galderma', 'DIFFERIN', 129160025 1,0 mg/g crem derm 12/11/2012
'adenosina', 'Hipolabor', 'ADENOSINA', 113430182 3mg/mL sol inj 08/04/2022
'agomelatina', 'Servier', 'VALDOXAN', 112780073 25 mg com rev 21/01/2013
'albendazol', 'Sanofi Medley' 'ALBENDAZOL', 183260193 400mg com mast 09/10/2023
'alcaftadina', 'Allergan', 'LASTACAFT', 101470179 2,5mg/ml sol oft 01/07/2014
'alectinibe', 'Roche', 'ALECENSA', 101000668 150mg cap dura 10/02/2023
'alendronato sódico', 'Sandoz', 'ALENDRONATO DE SÓDIO', 100470474 70 mg com rev 30/10/2018
'alfaestradiol', 'Galderma', 'AVICIS', 129160046 0,25 mg/mL sol capilar 12/11/2012
'alfentanila (cloridrato)', 'Antibióticos do Brasil', 'RAPIFEN', 155620057 544 µg/mL sol inj 12/11/2012
'alfuzosina (cloridrato)', 'Sanofi Medley', 'XATRAL OD' 183260437 10 mg com rev 12/11/2012
'alopurinol', 'Aspen Pharma', 'ZYLORIC', 137640122 100mg com 28/09/2016
'alopurinol', 'Aspen Pharma', 'ZYLORIC', 137640122 300mg com 28/09/2016
'alprazolam', 'Mylan', 'FRONTAL', 188300091 0,25mg com 12/11/2012
'alprazolam', 'Mylan', 'FRONTAL', 188300091 0,5mg com 12/11/2012
'alprazolam', 'Mylan', 'FRONTAL', 188300091 1mg com 12/11/2012
'alprazolam', 'Mylan', 'FRONTAL', 188300091 2mg com 12/11/2012
'alprazolam', 'Mylan', 'FRONTAL XR', 188300091 0,5mg com rev lib lenta 12/11/2012
'alprazolam', 'Mylan', 'FRONTAL XR', 188300091 1,0mg com rev lib lenta 12/11/2012
'alprazolam', 'Mylan', 'FRONTAL XR', 188300091 2,0mg com rev lib lenta 12/11/2012
'alprostadil', 'Opem', 'ALPROXY', 127480029 500µg/mL sol inj 07/08/2020
'alprostadil', 'Pfizer', 'CAVERJECT', 102160203 10μg/mL pó liof sol inj 24/06/2013
'alprostadil', 'Pfizer', 'CAVERJECT', 102160203 20μg/mL pó liof sol inj 24/06/2013
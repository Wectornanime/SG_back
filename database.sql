-- Active: 1709764121405@@127.0.0.1@3306


CREATE DATABASE IF NOT EXISTS remedys;

USE remedys;

CREATE TABLE Medicamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmaco VARCHAR(45),
    detentor VARCHAR(45),
    medicamento VARCHAR(45),
    concentracao VARCHAR(20),
    bula VARCHAR(255),
    status VARCHAR(20)
);

INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, bula, status) VALUES
('abacavir (sulfato)', 'Glaxosmithkline', 'ZIAGENAVIR', '20 mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMjc2NDA3MCIsIm5iZiI6MTcxMzYyMjc5MiwiZXhwIjoxNzEzNjIzMDkyfQ.FmNiPQ6lTqjFBrX1K5mv_nfnfgW6zl609eS-cbif78M0W9NfFOZJY28UQjABUdVN1rdGHJP45HZzvxB9t4AyyA/?Authorization=', 'ativo'),
('abacavir (sulfato)', 'Glaxosmithkline', 'ZIAGENAVIR', '300 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMjc2NDA3MCIsIm5iZiI6MTcxMzYyMjc5MiwiZXhwIjoxNzEzNjIzMDkyfQ.FmNiPQ6lTqjFBrX1K5mv_nfnfgW6zl609eS-cbif78M0W9NfFOZJY28UQjABUdVN1rdGHJP45HZzvxB9t4AyyA/?Authorization=', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '50mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTk3MjE2NCIsIm5iZiI6MTcxMzYyMjg1MiwiZXhwIjoxNzEzNjIzMTUyfQ.iraPfTNTr--0ZUvko-f2DYEwgXMT1mPAOomknHdYJeRs3NHhtYB1ldVtr0hdFvMy3Xlmca81wwKUj2UOOxXIaA/?Authorization=', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTk3MjE2NCIsIm5iZiI6MTcxMzYyMjg1MiwiZXhwIjoxNzEzNjIzMTUyfQ.iraPfTNTr--0ZUvko-f2DYEwgXMT1mPAOomknHdYJeRs3NHhtYB1ldVtr0hdFvMy3Xlmca81wwKUj2UOOxXIaA/?Authorization=', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '150mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTk3MjE2NCIsIm5iZiI6MTcxMzYyMjg1MiwiZXhwIjoxNzEzNjIzMTUyfQ.iraPfTNTr--0ZUvko-f2DYEwgXMT1mPAOomknHdYJeRs3NHhtYB1ldVtr0hdFvMy3Xlmca81wwKUj2UOOxXIaA/?Authorization=', 'ativo'),
('abemaciclibe', 'Eli Lilly', 'VERZENIOS', '200mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTk3MjE2NCIsIm5iZiI6MTcxMzYyMjg1MiwiZXhwIjoxNzEzNjIzMTUyfQ.iraPfTNTr--0ZUvko-f2DYEwgXMT1mPAOomknHdYJeRs3NHhtYB1ldVtr0hdFvMy3Xlmca81wwKUj2UOOxXIaA/?Authorization=', 'ativo'),
('abiraterona (acetato)', 'Janssen-Cilag', 'ZYTIGA', '250mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNDkzNTIyOSIsIm5iZiI6MTcxMzYyMzAyMywiZXhwIjoxNzEzNjIzMzIzfQ.TEGL-ngIsfYELo3U-NSiHG25Z0psXtFeUPi1VhI_5CQC2K_xHtjdzysLTyWTdOxzlVa2Ao0Q0S1qEUYS3TPfzQ/?Authorization=', 'ativo'),
('abiraterona (acetato)', 'Janssen-Cilag', 'ZYTIGA', '500mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNDkzNTIyOSIsIm5iZiI6MTcxMzYyMzAyMywiZXhwIjoxNzEzNjIzMzIzfQ.TEGL-ngIsfYELo3U-NSiHG25Z0psXtFeUPi1VhI_5CQC2K_xHtjdzysLTyWTdOxzlVa2Ao0Q0S1qEUYS3TPfzQ/?Authorization=', 'ativo'),
('acalabrutinibe', 'Astrazeneca', 'CALQUENCE', '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxMzU2Njg4MiIsIm5iZiI6MTcxMzYyMzE1NiwiZXhwIjoxNzEzNjIzNDU2fQ.dLCq8x5chKlbNro3oANnQtzgHVQMMwdG8QOUIzsgtXG8AWrN0pSTGUkzTXWL9eUpC4shd3y1bUANyD_5QHaEPw/?Authorization=', 'ativo'),
('acebrofilina', 'Aché', 'BRONDILAT', '5mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNDAyMDc2NyIsIm5iZiI6MTcxMzYyMzEzMSwiZXhwIjoxNzEzNjIzNDMxfQ.VTlw-1hVO1e2kGOnSnxZJrMT6YblytfiAFNNTTy6OGxahJIzrEwYX8tZyhcTd37T9Wg1F6ev1wppnESIuvjU0w/?Authorization=', 'ativo'),
('acebrofilina', 'Aché', 'BRONDILAT', '10 mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNDAyMDc2NyIsIm5iZiI6MTcxMzYyMzEzMSwiZXhwIjoxNzEzNjIzNDMxfQ.VTlw-1hVO1e2kGOnSnxZJrMT6YblytfiAFNNTTy6OGxahJIzrEwYX8tZyhcTd37T9Wg1F6ev1wppnESIuvjU0w/?Authorization=', 'ativo'),
('acebrofilina', 'Eurofarma', 'FILINAR G', '5mg/ml', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDkzMDkyNSIsIm5iZiI6MTcxMzYyMzIxNiwiZXhwIjoxNzEzNjIzNTE2fQ.WFdc_rl-F51TAmaCCDy-qFt5AyPH6NoWUOYwDbglUVq7UpXnbpBbYe0_cOMIHetnKG_Zhs_rwRyGl6SnziA3EQ/?Authorization=', 'ativo'),
('aceclofenaco', 'Eurofarma', 'PROFLAM', '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMTUzMDgyOCIsIm5iZiI6MTcxMzYyMzQyNSwiZXhwIjoxNzEzNjIzNzI1fQ.OHFgtgRR3mif8ok_VQkI1vVXQvzk37ZKjL4XA7Lxplgr9SFw7jg5zeWeCpr9a0bO1xc_N3nszIsoJ07Y5tGGzg/?Authorization=', 'ativo'),
('aceclofenaco', 'Eurofarma', 'PROFLAM', '15mg/g', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMTUzMDgyOCIsIm5iZiI6MTcxMzYyMzQyNSwiZXhwIjoxNzEzNjIzNzI1fQ.OHFgtgRR3mif8ok_VQkI1vVXQvzk37ZKjL4XA7Lxplgr9SFw7jg5zeWeCpr9a0bO1xc_N3nszIsoJ07Y5tGGzg/?Authorization=', 'ativo'),
('acetato de fluormetolona', 'Novartis Biociências', 'FLORATE', '1mg/ mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODM5MjU3OSIsIm5iZiI6MTcxMzYyMzMyMCwiZXhwIjoxNzEzNjIzNjIwfQ.80LKW218nbcBqBX-F64ZlApyK6RFSzSW7JN_KgNrXiMgMJRqAjSzMpWnYw6zTkbZV8hn39eJvpZz0GPeSiO6Cg/?Authorization=', 'ativo'),
('acetato de glatiramer', 'Teva Farmacêutica', 'COPAXONE', '20mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDQ4NDI2OCIsIm5iZiI6MTcxMzYyMzUyNCwiZXhwIjoxNzEzNjIzODI0fQ.VZea2qdssgvbOlUy0ObcWI2QPLNwgK4-geMEXlLKfeUEOcryJ7pmTTnpbdChIxOsjfs4VdGjQ1xPyImVu4sGUA/?Authorization=', 'ativo'),
('acetato de glatiramer', 'Teva Farmacêutica', 'COPAXONE', '40mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDQ4NDI2OCIsIm5iZiI6MTcxMzYyMzUyNCwiZXhwIjoxNzEzNjIzODI0fQ.VZea2qdssgvbOlUy0ObcWI2QPLNwgK4-geMEXlLKfeUEOcryJ7pmTTnpbdChIxOsjfs4VdGjQ1xPyImVu4sGUA/?Authorization=', 'ativo'),
('acetazolamida', 'União Química', 'meto', '250 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNjM0NzUyOSIsIm5iZiI6MTcxMzYyMzc1MywiZXhwIjoxNzEzNjI0MDUzfQ.BD3XFLjJf4J854jLg69_04SOWfoBn1fTTWt2rsGRaG3PmJosqYtMRvV94X2jUV5YJ9Z_N_jK3_K0sCvpfTnIKA/?Authorization=', 'ativo'),
('acetilcisteína', 'Eurofarma', 'ACETILCISTEÍNA',  '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNzcyNDEyNyIsIm5iZiI6MTcxMzYyMzY1NywiZXhwIjoxNzEzNjIzOTU3fQ.-9uT8FwiOFLr0US7gM4U_RP_oCCQfvEMUdYSW6tSvgGx7tYELHGhVEthD7ftZk2-S8zcaMA3hxw7qrnBPSA3nQ/?Authorization=', 'ativo'),
('acetilcisteína', 'União Química', 'FLUCISTEIN', '40mg/g', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODE2NzM5MyIsIm5iZiI6MTcxMzYyMzY4MywiZXhwIjoxNzEzNjIzOTgzfQ.eRzMPlx2n8AN9_A9dTCZevdq32CHQkAjh4sSxYJw_5CgGLjxLdENMppGtTbDRaeWcxEw3_2JXh0V9QFfCPyAXA/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '120mg/g', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '11,5mg/ml', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '20 mg/ml', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '40mg/ml', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '600mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '100mg/ml', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '200mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'ativo'),
('aciclovir', 'Merck', 'ACICLOVIR', '400 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxNjIwMTg2NyIsIm5iZiI6MTcxMzYyMzg1OCwiZXhwIjoxNzEzNjI0MTU4fQ.EWlI4zjZ4Le5ECbAkTl1q4E-y0UFeW_fZqtqVonkOLE26LutSbcLr3KLngmXeQhWkQqUekbmq0makLQvZGE_lA/?Authorization=', 'ativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '200 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDkyOTgyNyIsIm5iZiI6MTcxMzYyMzk4MSwiZXhwIjoxNzEzNjI0MjgxfQ.GjrpOnT9mQDueLGd4DVoPNJoydwfJMqbme-hsC-BVoB225kI4ObYxKJk0iBC1zhj4JGIvXua9TyHIZQ6g7yc8w/?Authorization=', 'ativo'),
('aciclovir', 'Teuto', 'ACICLOVIR', '250mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTIxMDY3NiIsIm5iZiI6MTcxMzYyNDMxNiwiZXhwIjoxNzEzNjI0NjE2fQ.JY4LRH4wTiaSjKKiv2UCLbhbZREyegNQuRcumPytg48pd5OkA3Gqa4SMaaEyhYnKQJdE71Xs5tbDlYdBJuo8Lg/?Authorization=', 'ativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '50 mg/g', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDkyOTgyNyIsIm5iZiI6MTcxMzYyMzk4MSwiZXhwIjoxNzEzNjI0MjgxfQ.GjrpOnT9mQDueLGd4DVoPNJoydwfJMqbme-hsC-BVoB225kI4ObYxKJk0iBC1zhj4JGIvXua9TyHIZQ6g7yc8w/?Authorization=', 'ativo'),
('ácido acetilsalicílico', 'EMS S/A', 'ÁCIDO ACETIL SALICÍLICO', '100 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODk1MDI3NSIsIm5iZiI6MTcxMzYyNDU3MCwiZXhwIjoxNzEzNjI0ODcwfQ.PXkbzq3varQnagpn5l2p6vCybuA0GRYMyGAuPvT-3ADkXUFgiEPlCyC_WqS5WFnRy2G6e0cDN3u3YrfGgGKE6Q/?Authorization=', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA', '500mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODQyOTIzMiIsIm5iZiI6MTcxMzYyNDUyMCwiZXhwIjoxNzEzNjI0ODIwfQ.rRhN3yEgMOdZ7j2XDvOiYw5qqATtlhKyLDkaaYqeT0CMWF1VWrboAow_McyOyTmmgkixal7xOv3qxEvMTpfWTQ/?Authorization=', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA', '500mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODQyOTIzMiIsIm5iZiI6MTcxMzYyNDUyMCwiZXhwIjoxNzEzNjI0ODIwfQ.rRhN3yEgMOdZ7j2XDvOiYw5qqATtlhKyLDkaaYqeT0CMWF1VWrboAow_McyOyTmmgkixal7xOv3qxEvMTpfWTQ/?Authorization=', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA PREVENT', '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODY0Nzk3MCIsIm5iZiI6MTcxMzYyNDM3MywiZXhwIjoxNzEzNjI0NjczfQ.QHsfj2pa9bC7yRIsUGCPbwZSQrttPO_fSSwl_rnozwdgp0lmq-0mkipWC5AQgizN6z9WC6POm_hu4zTbJDsHtA/?Authorization=', 'ativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA PREVENT', '300mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODY0Nzk3MCIsIm5iZiI6MTcxMzYyNDM3MywiZXhwIjoxNzEzNjI0NjczfQ.QHsfj2pa9bC7yRIsUGCPbwZSQrttPO_fSSwl_rnozwdgp0lmq-0mkipWC5AQgizN6z9WC6POm_hu4zTbJDsHtA/?Authorization=', 'ativo'),
('adenosina', 'Hipolabor', 'ADENOSINA', '3mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTk3Njk1OCIsIm5iZiI6MTcxMzYyNDY2MiwiZXhwIjoxNzEzNjI0OTYyfQ.5eCdX-1gZLlmiAsTWi-IFRRqnAtWk9KdQn_e46KGnq2NUer3uJ6Ewba4SNlEGqNGDDjtwwUqmMy1w1a8UdXH3A/?Authorization=', 'ativo');





INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, bula, status) VALUES
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'inativo'),
('acetilcisteína', 'Zambon', 'FLUIMUCIL', '200mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzA4NTQ0NyIsIm5iZiI6MTcxMzYyMzcwNSwiZXhwIjoxNzEzNjI0MDA1fQ.lyF97anxayIRserLhllTnt4hDsAXn5lGROudlNM-LwBs1gEYb9cRw6RaFHgI9WmiY94LTZIAXrz4Qawpcv0sCg/?Authorization=', 'inativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '0,03 g/g', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDkyOTgyNyIsIm5iZiI6MTcxMzYyNDcyNCwiZXhwIjoxNzEzNjI1MDI0fQ.nFeZCPrAoUCCEK-Iv2Nw-_uHm7wyO42LTu2vwsZ4ad9FWZ1WE7a-bZFcDH-MSwjad8UOxgNbVQXeYJ3uRZDwMg/?Authorization=', 'inativo'),
('aciclovir', 'Glaxosmithkline', 'ZOVIRAX', '250mg/10mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMDkyOTgyNyIsIm5iZiI6MTcxMzYyNDcyNCwiZXhwIjoxNzEzNjI1MDI0fQ.nFeZCPrAoUCCEK-Iv2Nw-_uHm7wyO42LTu2vwsZ4ad9FWZ1WE7a-bZFcDH-MSwjad8UOxgNbVQXeYJ3uRZDwMg/?Authorization=', 'inativo'),
('ácido acetilsalicílico', 'Bayer', 'ASPIRINA BUFFERED',  '500mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxODY0Nzk3MCIsIm5iZiI6MTcxMzYyNDc0MywiZXhwIjoxNzEzNjI1MDQzfQ.DPedtCGE3KoS79699pgFsq9OO-2OJS5bibfCaNbmUndiu6cBduaIgY2JLJ4C9wQpWxW3MQw9hxtC31P9dTNeMg/?Authorization=', 'inativo'),
('ácido acetilsalicílico', 'Novartis Biociências', 'BUFFERIN CARDIO', '81mg', '', 'inativo'),
('ácido acetilsalicílico', 'Cimed', 'ÁCIDO ACETILSALICÍLICO', '100mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxMzE4NDA5OSIsIm5iZiI6MTcxMzYyNTAxOCwiZXhwIjoxNzEzNjI1MzE4fQ.-geqcunfnKi9xtD2kvgHgPGvxdjhhMNLlOEDjYoIzBuWbQQjphk65GmJBM8g8ZZ97f-qV0Gday_wHkcsRYWBZw/?Authorization=', 'inativo');




INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, bula, status) VALUES
('paracetamol', 'Cosmed', 'PRATIUM', '140mg/ml', '', 'ativo'),
('paracetamol', 'PF Consumer', 'SONRIDOR', '500mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxOTQ4ODcxNiIsIm5iZiI6MTcxMzYyNTE0MiwiZXhwIjoxNzEzNjI1NDQyfQ.kPZaaqQg7dwHniG4Qqlx1_bdBP0XmcY4IW-4Kq8HNeO3oaeUVySJ9dSwtG-e1xQSffsaGaEy43FGrilc9d817w/?Authorization=', 'ativo'),
('paracetamol', 'Johnson & Johnson', 'TYLENOL', '160 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzQzMDQyOCIsIm5iZiI6MTcxMzYyNTYyNywiZXhwIjoxNzEzNjI1OTI3fQ.72Bm-Pc18kVezDoPuUzN6A8vq2yN3xWSCaSVCnmsndcHpehndi-OQqduWHn3JhAr1Y7I4v9-D8mHHt0Brva9kA/?Authorization=', 'ativo'),
('paracetamol', 'Johnson & Johnson', 'TYLENOL', '500 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzQzMDQyOCIsIm5iZiI6MTcxMzYyNTYyNywiZXhwIjoxNzEzNjI1OTI3fQ.72Bm-Pc18kVezDoPuUzN6A8vq2yN3xWSCaSVCnmsndcHpehndi-OQqduWHn3JhAr1Y7I4v9-D8mHHt0Brva9kA/?Authorization=', 'ativo'),
('paracetamol', 'Johnson & Johnson', 'TYLENOL', '750 mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMzQzMDQyOCIsIm5iZiI6MTcxMzYyNTYyNywiZXhwIjoxNzEzNjI1OTI3fQ.72Bm-Pc18kVezDoPuUzN6A8vq2yN3xWSCaSVCnmsndcHpehndi-OQqduWHn3JhAr1Y7I4v9-D8mHHt0Brva9kA/?Authorization=', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL AP', '650 mg', '', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL BEBÊ', '100 mg/mL', '', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL CRIANÇA', '32 mg/mL', '', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL GELCAP', '500 mg', '', 'ativo'),
('paracetamol', 'Janssen-Cilag', 'TYLENOL GOTAS', '200 mg/mL', '', 'ativo'),
('paracetamol', 'Procter & Gamble', 'VICK PYRENA', '500mg', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIxMzI4ODY4MyIsIm5iZiI6MTcxMzYyNTc3OCwiZXhwIjoxNzEzNjI2MDc4fQ.L32lU0Cqh2tSxeGpGBy66f5yhaGBeI_l6yoK8FjcBgTzGt9qe0mv0YUVjBoUEVjs6MU9ZndmkuyvS5HcKTX39A/?Authorization=', 'ativo'),
('paracetamol', 'Halex Istar', 'HALEXMINOPHEN', '10 mg/mL', 'https://consultas.anvisa.gov.br/api/consulta/medicamentos/arquivo/bula/parecer/eyJhbGciOiJIUzUxMiJ9.eyJqdGkiOiIyMjMwMjYxMSIsIm5iZiI6MTcxMzYyNTc1MiwiZXhwIjoxNzEzNjI2MDUyfQ.WGUqiXJnSizDPdH_9pJWU76rK_BsZbJSMqO83sidCiaCGOJGU5JAkTLZ2OXotTSZSs1BX8i410zsu9MfboKpQg/?Authorization=', 'ativo'),
('paracetamol', 'Frenesius', 'KABIPAMOL', '10mg/ml', '', 'inativo');





















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


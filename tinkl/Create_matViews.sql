CREATE MATERIALIZED VIEW mado8357.Dalyvavimas
AS
  SELECT
     z.Kodas,
     z.Vardas,
     z.Pavarde,
     t.NR,
     t.Lygis,
     t.Vieta
  FROM
     mado8357.Zaidejas as z
  INNER JOIN
     mado8357.Dalyvauja as d ON d.Zaidejai = a.Kodas
  INNER JOIN
     mado8357.Turnyrai as t ON t.NR = d.Turnyras
WITH NO DATA;
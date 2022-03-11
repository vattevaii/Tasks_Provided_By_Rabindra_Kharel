SELECT
  array_agg (distinct o1.company) AS ValueStocks
FROM
  dividend o1,
  dividend o2
WHERE
  (
    o1.company = o2.company
    AND (
      o1.fiscal_year = o2.fiscal_year - 10001
      OR o1.fiscal_year = o2.fiscal_year + 10001
    )
  );
SELECT
  CONCAT(
    '{"',
    string_agg (
      distinct o1.company,
      '","'
      ORDER BY
        o1.company
    ),
    '"}'
  ) AS ValueStocks
FROM
  dividend o1,
  dividend o2
WHERE
  (
    o1.company = o2.company
    AND (
      o1.fiscal_year = o2.fiscal_year - 10001
      OR o1.fiscal_year = o2.fiscal_year + 10001
    )
  );
SELECT
  *
FROM
  dividend;
SELECT
  Distinct company,
  fiscal_year,
  rank() Over (
    Partition by company
    order by
      fiscal_year
  )
FROM
  (
    SELECT
      Distinct *
    FROM
      dividend
  )
order by
  company,
  fiscal_year;
SELECT
  d.company,
  d.fiscal_year,
  d2.fiscal_year
FROM
  dividend d USING dividend d2;
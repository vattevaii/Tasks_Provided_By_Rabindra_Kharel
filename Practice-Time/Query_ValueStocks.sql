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
INSERT INTO
  dividend(company, fiscal_year)
VALUES
  ('AHPC', 20712072),('AHPC', 20712072),('AHPC', 20732074),('AHPC', 20762077),('CZBIL', 20692070),('CZBIL', 20702071),('CZBIL', 20712072),('CZBIL', 20732074),('GBIME', 20692070),('GBIME', 20702071),('GBIME', 20712072),('GBIME', 20732074);
-- Regex: \b(\w+)\b,\b(\d+)\b
  -- Replace with: ('$1', $2),
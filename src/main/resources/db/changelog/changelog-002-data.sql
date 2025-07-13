-- Inserisci ruoli di base
INSERT INTO roles (id, name) VALUES
  ('11111111-1111-1111-1111-111111111111', 'ROLE_USER'),
  ('22222222-2222-2222-2222-222222222222', 'ROLE_ADMIN');

-- Inserisci utenti di test (usa hash reale per SHA-512)
INSERT INTO users (id, username, password, full_name) VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 'testuser', 
  'sUNhQEwHj/1UnAPbRDw/7eLz5TTXP3j3cwHtl9SkNqn9nbBe6LMlwK02Q4tD/shRDCBPwcHtsh0JQcAOniwc4g==', 'Test User'), -psw: user
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', 'adminuser', 
  'x61Ey612Kl2gpFL56FT9weDnpSo4AV8j8+qx2AuTHdRyY036xxzTTrw10Wq3+4qQyB+XURPWx1ONxp3Y3pB37A==', 'Admin User'); -psw: admin-

-- Associa ruoli
INSERT INTO user_roles (user_id, role_id) VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111'), -- testuser → ROLE_USER
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222'); -- adminuser → ROLE_ADMIN
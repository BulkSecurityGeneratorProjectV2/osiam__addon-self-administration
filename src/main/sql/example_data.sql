--
-- Example self-administration client, please sync to the attribute values in the addon-self-administration.properties.
-- Please update all queries in this file to your needs!
-- Have to be imported in the database of the auth-server, before you deploy the addon-self-administration!
--
INSERT INTO osiam_client (internal_id, accesstokenvalidityseconds, client_secret, expiry,
id, implicit_approval, redirect_uri, refreshtokenvalidityseconds,
validityinseconds)
VALUES (10, 2342, 'super-secret', null, 'addon-self-administration-client', FALSE, 'http://localhost:8080/addon-self-administration', 4684, 1337);

INSERT INTO osiam_client_scopes (id, scope) VALUES (10, 'GET');
INSERT INTO osiam_client_scopes (id, scope) VALUES (10, 'POST');
INSERT INTO osiam_client_scopes (id, scope) VALUES (10, 'PUT');
INSERT INTO osiam_client_scopes (id, scope) VALUES (10, 'PATCH');
INSERT INTO osiam_client_scopes (id, scope) VALUES (10, 'DELETE');
INSERT INTO osiam_client_grants (id, grants) VALUES (10, 'authorization_code');
INSERT INTO osiam_client_grants (id, grants) VALUES (10, 'refresh_token');
INSERT INTO osiam_client_grants (id, grants) VALUES (10, 'password');
INSERT INTO osiam_client_grants (id, grants) VALUES (10, 'client_credentials');

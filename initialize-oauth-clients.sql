/*

Don't forget that you need to be connected to the omh database on postgresql

sudo docker exec -it ohmage_postgres_1 bash
psql -U postgres
\c omh


Here is the format of the insert:

INSERT INTO oauth_client_details
            (client_id,
             resource_ids,
             client_secret,
             scope,
             authorized_grant_types,
             web_server_redirect_uri,
             authorities,
             access_token_validity,
             refresh_token_validity,
             additional_information,
             autoapprove)
VALUES      ('CLIENT-ID',
             'dataPoint',
             'CLIENT-SECRET',
             'read_data_points,write_data_points',
             'implicit',
             'http://localhost:3000/mobility_dashboard',
             'ROLE_CLIENT',
             NULL,
             -1,
             NULL,
             'read_data_points,write_data_points');

INSERT INTO oauth_client_details
           (client_id,
            resource_ids,
            client_secret,
            scope,
            authorized_grant_types,
            web_server_redirect_uri,
            authorities,
            access_token_validity,
            refresh_token_validity,
            additional_information,
            autoapprove)
VALUES      ('RSUITE_APP_CLIENT_ID',
            'dataPoint',
            'RSUITE_APP_CLIENT_SECRET',
            'write_data_points',
            'authorization_code,refresh_token,password',
            'org.researchsuite.auth://auth/redirect',
            'ROLE_CLIENT',
            NULL,
            -1,
            NULL,
            'write_data_points');
*/

server {
    listen      80;
    server_name ${FQDN};
    root   /usr/share/nginx/html;
    index  index.html index.htm;

    auth_basic ${AUTH};
    auth_basic_user_file /etc/nginx/.htpasswd;

    add_header Strict-Transport-Security "max-age=31536000; includeSubDomains; preload";

    error_page 404 /index.html;

    location = /status {
        return 204;
    }

    location ~ ^/ {
        # Avoid load the website in iframes to avoid clickjacking.
        add_header X-Frame-Options "DENY";

        try_files ${DOLLAR}uri ${DOLLAR}uri/ /${DOLLAR}1/index.html =404;
    }

    # Include the basic h5bp config set
    include h5bp/basic.conf;


}

server {
    listen      80;
    server_name www.${FQDN};

    return 301 https://${FQDN}${DOLLAR}request_uri;
}

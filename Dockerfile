FROM nginx:stable

# ARG version=unknown
# ARG build_date=unknown
# ARG commit_hash=unknown
# ARG vcs_url=unknown
# ARG vcs_branch=unknown

# LABEL \
#     org.label-schema.vendor="dtpnk" \
#     org.label-schema.name="blog" \
#     org.label-schema.description="Blog page" \
#     org.label-schema.vcs-url=$vcs_url \
#     org.label-schema.vcs-branch=$vcs_branch \
#     org.label-schema.vcs-ref=$commit_hash \
#     org.label-schema.version=$version \
#     org.label-schema.build-date=$build_date \
#     maintainer=""

# ARG DEBIAN_FRONTEN=noninteractive

# ENV FQDN=localhost
# ENV AUTH=off

# # Add nginx and project config files
# ADD rootfs /

# Add compiled html
ADD ./_site /usr/share/nginx/html

# STOPSIGNAL SIGTERM

# EXPOSE 80

# CMD ["nginx" "-g" "daemon off;"]

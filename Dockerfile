# FROM nginx

# WORKDIR /usr/share/nginx/html
# RUN rm /etc/nginx/conf.d/default.conf
# COPY --from=build /app/build /usr/share/nginx/html
# COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]


FROM nginx

WORKDIR '/app'
RUN rm /etc/nginx/conf.d/default.conf
COPY ./html /usr/share/nginx/html/
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80



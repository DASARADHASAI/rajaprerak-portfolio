# --- Serve static HTML directly ---
FROM nginx:stable-alpine
WORKDIR /usr/share/nginx/html

# remove default nginx website
RUN rm -rf ./*

# copy your project files (adjust folder if needed)
COPY . .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

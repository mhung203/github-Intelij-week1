# Sử dụng Tomcat 10.1.44 chính thức
FROM tomcat:10.1.44-jdk17-temurin

# Xóa ứng dụng mặc định ROOT để tránh đụng tên
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR từ thư mục target vào Tomcat
COPY target/week1-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080 để chạy app
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

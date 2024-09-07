FROM mcr.microsoft.com/mssql/server:2022-latest

# Environment variables
ENV ACCEPT_EULA=Y

# Copy the SQL script
COPY init.sql /init.sql

# Run the SQL script
CMD /bin/bash -c "sleep 20 && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P ${DB_PASSWORD} -i /init.sql && /opt/mssql/bin/sqlservr --accept-eula"

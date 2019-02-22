FROM microsoft/dotnet:2.1-sdk
RUN mkdir /app
WORKDIR /app
COPY TestApp/*.csproj .
RUN dotnet restore
COPY TestApp/ .
RUN dotnet publish -c Release -o out
EXPOSE 8080
CMD ["dotnet", "/app/bin/Release/netcoreapp2.1/TestApp.dll"]

FROM microsoft/dotnet:2.1-sdk
RUN mkdir /app
WORKDIR /app
COPY TestApp/*.csproj .
RUN dotnet restore
COPY TestApp/ .
RUN dotnet publish -c Release -o out
CMD ["dotnet", "/app/bin/Release/netcoreapp1.1/TestApp.dll"]
EXPOSE 8080

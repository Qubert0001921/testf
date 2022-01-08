FROM mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR /src
COPY ./ ./
RUN dotnet publish -c Release -o /App
WORKDIR /App
ENTRYPOINT ["dotnet", "console.dll"]
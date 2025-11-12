# Usa uma imagem Node oficial
FROM node:25-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos de configuração primeiro (para otimizar cache)
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do código
COPY . .

# Expõe a porta padrão (caso use servidor)
EXPOSE 3000
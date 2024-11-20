<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo_text.svg" width="320" alt="Nest Logo" /></a>
</p>

# News Manager

**News Manager** é um backend desenvolvido com **NestJS** para gerenciar notícias e fornecer recomendações personalizadas aos usuários. Este projeto aplica princípios de **Clean Architecture**, **SOLID** e **TDD** para garantir uma estrutura robusta, escalável e fácil de manter.

---

## **Objetivos**
- Gerenciar notícias e usuários.
- Fornecer recomendações personalizadas com base em preferências e interações.
- Garantir alta performance e modularidade utilizando boas práticas de desenvolvimento.

---

## **Tecnologias**
- [NestJS](https://nestjs.com) - Framework Node.js para aplicações escaláveis e modulares.
- [PNPM](https://pnpm.io) - Gerenciador de pacotes eficiente e rápido.
- [TypeScript](https://www.typescriptlang.org) - Superset do JavaScript para tipagem estática.
- [Jest](https://jestjs.io) - Testes unitários e integração.
- Banco de dados (a ser definido, ex.: PostgreSQL, MongoDB).

---

## **Estrutura Inicial**
Este projeto seguirá os princípios de **Clean Architecture**, com a seguinte estrutura básica:

```
src/
├── application/   # Casos de uso e regras de negócio.
├── domain/        # Entidades e contratos da aplicação.
├── infrastructure/ # Configuração de banco, provedores e adaptação.
├── interfaces/    # Controladores (REST, GraphQL) e gateways de entrada.
```

---

## **Configuração e Instalação**

1. Clone o repositório:
   ```bash
   git clone <url-do-repositorio>
   cd news-recommendation-system
   ```

2. Instale as dependências:
   ```bash
   pnpm install
   ```

3. Configure as variáveis de ambiente:
   Crie um arquivo `.env` com os dados necessários:
   ```env
   PORT=3000
   DATABASE_URL=...
   ```

4. Execute o servidor:
   ```bash
   pnpm run start:dev
   ```

---

## **Como Contribuir**

1. Faça um fork do repositório.
2. Crie uma branch para sua feature ou correção:
   ```bash
   git checkout -b minha-feature
   ```
3. Envie um Pull Request descrevendo sua alteração.

---

## **Licença**

Este projeto está sob a licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.

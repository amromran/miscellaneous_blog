# Rails JS
[ WORK IN PROGRESS]

A modern Ruby on Rails 8 application for personal blog/site management with PostgreSQL and a basic frontend.

## Features

- Article management system (CRUD operations)
- PostgreSQL database
- Rails 8 with Hotwire (Turbo & Stimulus)
- Importmap for JavaScript management
- Solid Queue for background jobs
- Solid Cache for caching
- Solid Cable for WebSockets
- Docker support with Kamal deployment
- Comprehensive test suite with RSpec
- Code quality checks with RuboCop

## 📋 Requirements

- **Ruby version**: 3.4.7
- **Rails version**: 8.0.3
- **Database**: PostgreSQL
- **Node.js**: Not required (uses Importmap)

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone <https://github.com/amromran/miscellaneous_blog>
   cd miscellaneous_blog
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

4. **Set up the database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

## Running the Application

### Development Server

```bash
bin/rails server
```

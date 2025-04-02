# AI Search Project

A demonstration of advanced search capabilities using TimescaleDB with pgai, showcasing both traditional full-text search and semantic search using OpenAI embeddings.

## Features

- Full-text search using PostgreSQL's built-in text search capabilities
- Semantic search using OpenAI's text-embedding-ada-002 model
- Web interface for easy interaction with search results
- Docker-based setup with TimescaleDB and pgai vectorizer worker

## Prerequisites

- Docker and Docker Compose
- Python 3.12 or higher
- OpenAI API key
- Anthropic API key (optional)

## Setup

1. Clone the repository:
```bash
git clone <your-repo-url>
cd ai-search
```

2. Create a `.env` file with your API keys and configuration:
```env
OPENAI_API_KEY=your_openai_api_key
ANTHROPIC_API_KEY=your_anthropic_api_key
DATABASE=postgresql://postgres:postgres@localhost:5432/postgres
PORT=8080
```

3. Start the Docker services:
```bash
docker compose up -d
```

4. Install Python dependencies:
```bash
pip install -r requirements.txt
```

## Running the Application

Start the development server:
```bash
./devserver.sh
```

The application will be available at `http://localhost:8080`

## Usage

The web interface provides two search options:

1. **Full Text Search**: Uses PostgreSQL's full-text search capabilities to find articles matching specific keywords and conditions.
2. **Embedding Search**: Utilizes OpenAI's text-embedding-ada-002 model to perform semantic search based on natural language queries.

## Project Structure

- `main.py`: Flask application with search endpoints
- `src/index.html`: Web interface for interacting with search functionality
- `compose.yaml`: Docker Compose configuration for TimescaleDB and pgai services
- `devserver.sh`: Development server startup script

## Dependencies

- Flask: Web framework
- psycopg: PostgreSQL adapter
- python-dotenv: Environment variable management
- OpenAI: API client for embeddings
- TimescaleDB: Time-series database with pgai extension


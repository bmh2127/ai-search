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
- uv package manager (install with `curl -LsSf https://astral.sh/uv/install.sh | sh`)
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

4. Install Python dependencies using uv:
```bash
uv venv
source .venv/bin/activate  # On Unix/macOS
# or
.venv\Scripts\activate  # On Windows
uv pip install -r requirements.txt
```

- Always create a new branch for feature development
- Keep commits atomic and well-documented
- Pull latest changes before starting new work
- Test your changes locally before pushing
- Use feature branches and pull requests for major changes
- Regularly sync your local branch with the remote

## Running the Application

The project includes a development server script that uses uv. Start the server with:
```bash
./devserver.sh
```

Or manually run:
```bash
uv run python -m flask --app main run -p $PORT --debug
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

## License


## Project Extensions

Here are several ways you can extend and enhance this project:

### 1. Enhanced Search Capabilities
- Add support for multiple embedding models (e.g., Cohere, HuggingFace)
- Implement hybrid search combining both full-text and semantic search
- Add filters for date ranges, categories, or other metadata
- Implement search result ranking and scoring visualization

### 2. User Interface Improvements
- Add a modern frontend framework (React, Vue, etc.)
- Implement real-time search with debouncing
- Add search result pagination
- Include search history and saved searches
- Add result highlighting for matched terms

### 3. Data Management
- Add a data ingestion pipeline for new articles
- Implement data preprocessing and cleaning
- Add support for different document types (PDFs, Word docs, etc.)
- Create a data validation system

### 4. Performance Optimizations
- Implement caching for frequent searches
- Add database indexing strategies
- Optimize embedding storage and retrieval
- Add query performance monitoring

### 5. Advanced Features
- Add user authentication and personalized search
- Implement search analytics and usage tracking
- Add export functionality for search results
- Create an API documentation using Swagger/OpenAPI
- Add support for batch processing of searches

### 6. Monitoring and Maintenance
- Add logging and monitoring
- Implement automated testing
- Create a backup and recovery system
- Add performance metrics dashboard

### 7. Integration Possibilities
- Add support for external data sources
- Implement webhook notifications for new results
- Create a browser extension for quick searches
- Add integration with popular note-taking apps

### 8. AI Enhancements
- Implement query understanding and refinement
- Add automatic query expansion
- Create a recommendation system based on search history
- Add support for multi-language search

Choose the extensions that best align with your project goals and requirements. Each of these areas can be implemented incrementally to build a more robust and feature-rich search system.



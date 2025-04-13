# Data Science Project Template

This project follows a clean, modular structure for developing machine learning systems that are testable, reproducible, and production-friendly.

---

## 📁 Project structure

```
├── Makefile
├── README.md
├── api/                   # REST API service (FastAPI or similar)
│   ├── models/            # Request/response schemas
│   ├── routes/            # API endpoints
│   ├── services/          # Business logic
│   └── tests/             # API-specific tests
├── artifacts/             # Saved models, outputs (ignored in .git)
├── config/                # YAML configs for models and environments
│   ├── config.yaml
│   └── environments/
├── deployment/            # Dockerfiles, CI/CD, deployment scripts
│   ├── docker/
│   │   └── Dockerfile
│   └── pipelines/
├── docker-compose.yml     # Compose file for running services
├── experiments/           # Logs, params, metrics for experiments
├── mlruns/                # MLflow run tracking (local backend)
├── pyproject.toml         # Code style tools (black, ruff, mypy)
├── requirements.txt       # Python dependencies
├── scripts/               # Shell/Python scripts for CLI usage
├── src/                   # Core ML logic
│   ├── data/              # Data structure (raw/processed/curated)
│   ├── evaluation/        # Evaluation metrics, reports
│   ├── features/          # Feature engineering
│   ├── inference/         # Model prediction logic
│   ├── models/            # Model architectures, wrappers
│   ├── notebooks/         # Jupyter notebooks (EDA, prototyping)
│   ├── tests/             # Unit tests for ML components
│   ├── training/          # Training pipeline
│   └── utils/             # Helpers and utility functions
└── tests/                 # Global tests
    ├── integration/
    └── unit/
```

---

## ✅ Key features

- Modular source code for training, evaluation, inference
- Clean API structure with separation of routes, services, and schemas
- Local and remote experiment tracking with MLflow
- Separate test layers (unit, integration, API)
- Containerized development and deployment using Docker
- Configuration management using YAML (Hydra-ready)
- Ready for CI/CD pipelines

---

## 🧪 Testing layout

| Location         | Purpose                             |
|------------------|-------------------------------------|
| `src/tests/`      | Unit tests for ML logic             |
| `api/tests/`      | API endpoint tests                  |
| `tests/unit/`     | System-level unit tests             |
| `tests/integration/` | Integration tests (end-to-end)  |

---

## 📌 Recommendations

- Keep datasets and large model artifacts outside of version control
- Log all experiments to `mlruns/` or external MLflow tracking server
- Use `config/` to define experiment settings and environment-specific overrides
- Use Docker for consistent training, inference, and serving environments
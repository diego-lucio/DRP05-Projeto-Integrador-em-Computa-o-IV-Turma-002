
# PI4 — Sistema de Análise de Dados em Escala (Qualidade do Ar — Jataí/Votorantim-SP)

Atende ao objetivo do PI IV: **análise de dados em escala com dados existentes/IoT + ML**, com **interface de visualização**.

## Rodando sem Docker
```bash
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -r requirements.txt

make etl
make train

make api
# em outro terminal
make app
```

## Docker
```bash
docker compose up --build
# App: http://localhost:8501
# API: http://localhost:8000/docs
```

## Estrutura
- `src/etl/build_features.py` — gera `data/features_daily.parquet`
- `src/models/train_pm25.py` — treina modelo e salva artefato em `models/`
- `api/main.py` — FastAPI com `/predict_pm25`
- `app/dashboard_streamlit.py` — Dashboard Streamlit
- `data/` — CSVs de exemplo (substituíveis por dados reais)

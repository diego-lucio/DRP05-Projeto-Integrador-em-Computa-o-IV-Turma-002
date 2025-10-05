
.PHONY: etl train api app

etl:
	python -m src.etl.build_features

train:
	python -m src.models.train_pm25

api:
	uvicorn api.main:app --reload --port 8000

app:
	streamlit run app/dashboard_streamlit.py

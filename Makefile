install:
	pip install -r requirements.txt

mlflow-ui:
	mlflow ui --backend-store-uri ./mlruns

serve:
	uvicorn api.main:app --reload

lint:
	black src/ api/

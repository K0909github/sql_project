FROM python:3.11-slim  # Python 3.11の軽量イメージを使用

WORKDIR /app  # 作業ディレクトリを/appに設定

COPY requirements.txt ./  # 依存関係ファイルをコピー
RUN pip install --no-cache-dir -r requirements.txt  # 依存関係をインストール

COPY . .  # アプリのソース一式をコピー

CMD ["python", "main.py"]  # コンテナ起動時にPythonスクリプトを実行

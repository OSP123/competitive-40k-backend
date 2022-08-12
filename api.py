from flask import Flask
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)


@app.route('/api')
def home():
    return { 
      "something": "Whatever"
    }


if __name__ == "__main__":
    port = int(os.environ.get('PORT', 5001))
    app.run(debug=True, host='0.0.0.0', port=port)
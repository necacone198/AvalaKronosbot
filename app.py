import os
import sys

# Ensure project root is in path
ROOT = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, ROOT)

from webui.app import app

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 10000))
    print(f"Starting Kronos Web UI on port {port}...")
    print(f"MODEL_AVAILABLE will be checked inside webui.app")
    app.run(host="0.0.0.0", port=port, debug=False)

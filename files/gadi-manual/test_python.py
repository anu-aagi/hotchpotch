#!/usr/bin/env python3
"""
test_python_venv.py
Tests that venv-installed packages are available and working.
Uses numpy and pandas, which are not included in the base Gadi Python
module, so this will only run correctly inside a venv where they've
been installed.
"""

import sys
import socket
import platform
import time

def main():
    print("=== Python venv Test Job ===")
    print(f"Python version: {sys.version.split()[0]}")
    print(f"Executable: {sys.executable}")
    print(f"Hostname: {socket.gethostname()}")
    print(f"Platform: {platform.platform()}")
    print(f"Start time: {time.strftime('%Y-%m-%d %H:%M:%S')}\n")

    try:
        import numpy as np
        import pandas as pd
    except ImportError as e:
        print(f"ERROR: {e}")
        print("Activate your venv and run: pip install numpy pandas")
        sys.exit(1)

    print(f"numpy version: {np.__version__}")
    print(f"pandas version: {pd.__version__}\n")

    # Small computation to confirm both packages actually work
    arr = np.random.rand(1000, 3)
    df = pd.DataFrame(arr, columns=["a", "b", "c"])

    print("Generated a 1000x3 random DataFrame.")
    print("Column means:")
    print(df.mean())

    print(f"\nEnd time: {time.strftime('%Y-%m-%d %H:%M:%S')}")
    print("=== Python venv Test Job Complete ===")

if __name__ == "__main__":
    main()
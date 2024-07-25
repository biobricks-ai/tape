# Imports
# -------
import os
import re
import gzip
import pathlib
import pandas as pd

extensions = ['json']
extensions_re = re.compile(r'\.(' + '|'.join(re.escape(ext) for ext in extensions) + r')$')
files = filter( lambda item: item.is_file(), pathlib.Path('extract').rglob('*'))

brick_dir = pathlib.Path('brick')
brick_dir.mkdir(exist_ok=True)

for file in files:

    out_basename = re.sub(extensions_re, '.parquet', file.name )
    out_file = brick_dir / file.relative_to('extract').with_name( out_basename )

    if file.match('*.json'):
        df = pd.read_json(file)
        df.to_parquet(out_file)

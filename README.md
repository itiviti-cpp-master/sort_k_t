# sort command line utility

```bash
sort [OPTION] [FILE]
```

options:
* `-k, --key=KEYDEF` - sort via a key; KEYDEF gives location and type
* `-t, --field-separator=SEP` - use SEP instead of non-blank to blank transition

### Example
```bash
$ cat e.txt
Yuri		Gagarin		1934-1968
Gherman		Titov		1935-2000
Valentina	Tereshkova	1937
Vladimir	Komarov		1927-1967
$ sort e.txt -k 2 # Sort by second column: by second name
Yuri		Gagarin		1934-1968
Vladimir	Komarov		1927-1967
Valentina	Tereshkova	1937
Gherman		Titov		1935-2000
$ sort e.txt -k 2 -t - # Sort by second column, but column separator is "-".
Valentina	Tereshkova	1937
Vladimir	Komarov		1927-1967
Yuri		Gagarin		1934-1968
Gherman		Titov		1935-2000
```

﻿# Code generated by LLaMA

with open('main.bin', 'rb') as f_in, open('output.bin', 'wb') as f_out:
    while True:
        byte = f_in.read(1)
        if not byte:
            break
        count = f_in.read(1)[0] + 1
        f_out.write(byte * count)
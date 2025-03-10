﻿# Code generated by LLaMA

with open('main.bin', 'rb') as f:
    data = f.read()

result = bytearray()
i = 0
while i < len(data):
    count = 1
    while i + 1 < len(data) and data[i] == data[i + 1]:
        i += 1
        count += 1
    if count < 256:
        result.append(count - 1)
        result.append(data[i])
    else:
        remaining_count = count - 1
        while remaining_count > 0:
            if remaining_count > 255:
                result.append(0xFF)
                result.append(data[i])
                remaining_count -= 255
            else:
                result.append(remaining_count - 1)
                result.append(data[i])
                remaining_count = 0
    i += 1

with open('output.bin', 'wb') as f:
    f.write(result)
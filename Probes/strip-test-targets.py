# Throwaway: drop every .testTarget except JBirdCodableSupportTests from all manifests.
import glob, re
for path in glob.glob('Package*.swift'):
    s = open(path).read(); out = []; i = 0
    while True:
        j = s.find('.testTarget(', i)
        if j < 0: out.append(s[i:]); break
        depth = 0; k = j + len('.testTarget')
        while True:
            c = s[k]; depth += c == '('; depth -= c == ')'; k += 1
            if depth == 0: break
        block = s[j:k]
        if k < len(s) and s[k] == ',': k += 1
        out.append(s[i:j])
        if 'name: "JBirdCodableSupportTests"' in block: out.append(s[j:k])
        i = k
    open(path, 'w').write(''.join(out)); print(path, 'kept JBirdCodableSupportTests only')

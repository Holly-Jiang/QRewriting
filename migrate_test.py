# from qcpm import Circuit
from qcpm.migration import convert
import json

# circuit_path = './data/example_test_migration'
# circuit_path = './data/test'
# circuit = Circuit(circuit_path, optimize=False)

# circuit.save('circuit_after', to='Surface')

# patterns_path = './qcpm/optimization/rules/IBM/hadamard.json'
# patterns_path = './qcpm/optimization/rules/IBM/commutation.json'
# patterns_path = './qcpm/optimization/rules/IBM/reversible.json'
patterns_path = './qcpm/pattern/rules/IBM/pattern.json'
with open(patterns_path, 'r') as file:
    patterns = json.load(file)

# print(patterns)
# convert(patterns, 'Surface')

# convert(patterns, 'Surface')
# with open('./qcpm/optimization/rules/Surface/reversible.json', 'w') as file:
with open('./qcpm/pattern/rules/Surface/pattern.json', 'w') as file:
    json.dump(convert(patterns, 'Surface'), file)



# from qcpm import Circuit
from qcpm.migration import convert
import json

# circuit_path = './data/example_test_migration'
# circuit_path = './data/test'
# circuit = Circuit(circuit_path, optimize=False)

# circuit.save('circuit_after', to='Surface')


paths = [
    ['./qcpm/optimization/rules/', '/hadamard.json'],
    ['./qcpm/optimization/rules/', '/commutation.json'],
    ['./qcpm/optimization/rules/', '/reversible.json'],
    ['./qcpm/pattern/rules/', '/pattern.json'],
    ['./qcpm/pattern/rules/', '/commutation.json'],
    ['./qcpm/pattern/rules/', '/reversible.json'],
    ['./qcpm/pattern/rules/', '/hadamard.json'],
    ['./qcpm/expander/rules/', '/expansion.json'],
]


target = 'Surface'

for path in paths:
    pattern_path = path[0] + 'IBM' + path[1]
    target_path = path[0] + target + path[1]

    with open(pattern_path, 'r') as file:
        patterns = json.load(file)

    with open(target_path, 'w') as file:
        json.dump(convert(patterns, target), file)
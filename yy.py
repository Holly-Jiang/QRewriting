import os
import time

import psutil
from qiskit import QuantumCircuit
from qiskit.converters import circuit_to_dag
from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import CXCancellation, Optimize1qGates, CommutativeCancellation

input_dir='./benchmark/BIGD/'
files=sorted(os.listdir(input_dir))
f=open('./results/test.txt','w')
count=0
for i, file in enumerate(files):
    start=time.time()
    circuit=QuantumCircuit.from_qasm_file(input_dir+file)
    before=circuit_to_dag(circuit)
    pass_manager = PassManager()
    pass_manager.append(CXCancellation())
    out_circuit = pass_manager.run(circuit)

    cache = (psutil.Process(os.getpid()).memory_info().rss / 1024 / 1024)
    passmanager = PassManager()
    passmanager.append(CommutativeCancellation())
    new_circuit = passmanager.run(out_circuit)

    dag=circuit_to_dag(new_circuit)
    pass_ = Optimize1qGates()
    after = pass_.run(dag)
    count=count+after.size()
    # for node in dag.topological_op_nodes():
    #     count+=1
    #     if len(node.qargs) == 1:
    #         print(f'{node.name} q[{node.qargs[0].index}];')
    #     if len(node.qargs) == 2:
    #         print(f'{node.name} q[{node.qargs[0].index}], q[{node.qargs[1].index}];')
    f.write(f'{file} {before.size()} {after.size()} {before.depth()} {after.depth()} {len(before.op_nodes())-len(before.two_qubit_ops())} {len(after.op_nodes())-len(after.two_qubit_ops())} {len(before.two_qubit_ops())} {len(after.two_qubit_ops())} {time.time()-start} {cache}\n')
    print(count)
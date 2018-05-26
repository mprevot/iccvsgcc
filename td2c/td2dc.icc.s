0000000000400d00 <main>:
push   %rbp
mov    %rsp,%rbp
and    $0xffffffffffffff80,%rsp
sub    $0x80,%rsp

xor    %esi,%esi
mov    $0x3,%edi
callq  <__intel_new_feature_proc_init>
stmxcsr (%rsp)
mov    $0x603900,%edi
mov    $0x9,%esi
orl    $0x8040,(%rsp)
ldmxcsr (%rsp)

callq  <COUT0>
mov    %rax,%rdi
mov    $0x400be0,%esi
callq  <COUT1>









mov    $0x603900,%edi
mov    $0x13,%esi
callq  <COUT0>
mov    %rax,%rdi
mov    $0x400be0,%esi
callq  <COUT1>

xor    %eax,%eax
mov    %rbp,%rsp
pop    %rbp
retq
nopl   0x0(%rax)
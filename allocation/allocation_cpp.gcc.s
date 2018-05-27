<main>: # c++
push   %rbp
mov    %rsp,%rbp
sub    $0x10,%rsp
mov    $0xfa0,%edi

callq  4004e0 <_Znam@plt>
mov    %rax,-0x8(%rbp)
cmpq   $0x0,-0x8(%rbp)
je     40061b <main+0x29>

mov    -0x8(%rbp),%rax
mov    %rax,%rdi

callq  400500 <_ZdaPv@plt>
mov    $0x0,%eax # 40061b
leaveq
retq

nopw   %cs:0x0(%rax,%rax,1)
nopl   0x0(%rax)

<main>: # c
push   %rbp
mov    %rsp,%rbp
sub    $0x10,%rsp
mov    $0xfa0,%edi
callq  400450 <malloc@plt>
mov    %rax,-0x8(%rbp)
mov    -0x8(%rbp),%rax
mov    %rax,%rdi
callq  400430 <free@plt>
mov    $0x0,%eax
leaveq
retq
nopl   0x0(%rax,%rax,1)

<main>: # c++
push   %rbp
mov    %rsp,%rbp
sub    $0x20,%rsp
mov    $0xfa0,%eax
mov    %rax,%rdi

callq  400570 <_Znam@plt>
mov    %rax,-0x20(%rbp)
mov    -0x20(%rbp),%rax
mov    %rax,-0x18(%rbp)
mov    -0x18(%rbp),%rax
mov    %rax,-0x10(%rbp)
mov    -0x10(%rbp),%rax
mov    %rax,-0x8(%rbp)
mov    -0x10(%rbp),%rax
test   %rax,%rax
je     4006d2 <main+0x4e>

mov    -0x8(%rbp),%rax
mov    $0x4,%edx
mov    %rax,%rdi
mov    %rdx,%rsi

callq  400560 <_ZdaPvm@plt>
mov    $0x0,%eax # 4006d2
leaveq
retq

nop
nop
nop
nopl   0x0(%rax)

<main>: # c
push   %rbp
mov    %rsp,%rbp
sub    $0x10,%rsp
mov    $0xfa0,%eax
mov    %rax,%rdi
callq  400520 <malloc@plt>
mov    %rax,-0x10(%rbp)
mov    -0x10(%rbp),%rax
mov    %rax,-0x8(%rbp)
mov    -0x8(%rbp),%rax
mov    %rax,%rdi
callq  400540 <free@plt>
mov    $0x0,%eax
leaveq
retq
nopl   0x0(%rax,%rax,1)

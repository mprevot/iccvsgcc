00000000004007c2 <main>:
push   %rbp
mov    %rsp,%rbp
sub    $0x10,%rsp

movl   $0x3,-0xc(%rbp)
mov    -0xc(%rbp),%eax
imul   -0xc(%rbp),%eax
mov    %eax,-0xc(%rbp)
mov    -0xc(%rbp),%eax
mov    %eax,%esi
mov    $0x601060,%edi



callq  <COUT0>
mov    $0x4006d0,%esi
mov    %rax,%rdi
callq  <COUT1>

movl   $0x3,-0xc(%rbp)
mov    -0xc(%rbp),%eax
add    %eax,%eax
mov    %eax,-0x8(%rbp)
mov    -0xc(%rbp),%eax
add    $0x3,%eax
mov    %eax,-0x4(%rbp)
mov    -0xc(%rbp),%eax
imul   -0x8(%rbp),%eax
add    $0x1,%eax

mov    %eax,%esi
mov    $0x601060,%edi
callq  <COUT0>
mov    $0x4006d0,%esi
mov    %rax,%rdi
callq  <COUT1>

mov    $0x0,%eax
leaveq
retq
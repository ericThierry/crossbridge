/* { dg-do compile } */
/* { dg-options "-O1 -fstrict-overflow -fdump-tree-optimized" } */
/* LLVM LOCAL test not applicable */
/* { dg-require-fdump "" } */

int f(int a)
{
  return -(-a/10);
}

/* { dg-final { scan-tree-dump-times "-a / 10" 0 "optimized"} } */
/* { dg-final { scan-tree-dump-times "a / 10" 1 "optimized"} } */

/* { dg-final { cleanup-tree-dump "optimized" } } */



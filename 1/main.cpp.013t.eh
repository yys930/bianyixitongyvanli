
;; Function main (main, funcdef_no=1731, decl_uid=44205, cgraph_uid=465, symbol_order=495)

int main ()
{
  struct basic_ostream & D.49113;
  int f;
  int n;
  int i;
  int D.49111;

  std::basic_istream<char>::operator>> (&cin, &n);
  i = 2;
  f = 1;
  goto <D.44265>;
  <D.44266>:
  f = f * i;
  i = i + 1;
  <D.44265>:
  n.0_1 = n;
  if (i <= n.0_1) goto <D.44266>; else goto <D.44264>;
  <D.44264>:
  D.49113 = std::basic_ostream<char>::operator<< (&cout, f);
  _2 = D.49113;
  std::basic_ostream<char>::operator<< (_2, endl);
  D.49111 = 0;
  goto <D.49115>;
  <D.49115>:
  n = {CLOBBER};
  goto <D.49112>;
  D.49111 = 0;
  goto <D.49112>;
  <D.49112>:
  return D.49111;
  <D.49114>:
  n = {CLOBBER};
  resx 1
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2231, decl_uid=49103, cgraph_uid=965, symbol_order=1022)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49117>; else goto <D.49118>;
  <D.49117>:
  if (__priority == 65535) goto <D.49119>; else goto <D.49120>;
  <D.49119>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49121>;
  <D.49120>:
  <D.49121>:
  goto <D.49122>;
  <D.49118>:
  <D.49122>:
  return;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2232, decl_uid=49109, cgraph_uid=966, symbol_order=1141)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}



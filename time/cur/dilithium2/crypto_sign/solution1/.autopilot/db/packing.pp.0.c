# 1 "packing.c"
# 1 "packing.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 305 "/tools/Xilinx/Vivado/2019.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "packing.c" 2
# 1 "./params.h" 1



# 1 "./config.h" 1
# 5 "./params.h" 2
# 2 "packing.c" 2
# 1 "./packing.h" 1



# 1 "/tools/Xilinx/Vivado/2019.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 1 3
# 33 "/tools/Xilinx/Vivado/2019.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 439 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 440 "/usr/include/features.h" 2 3 4
# 461 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 34 "/tools/Xilinx/Vivado/2019.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 2 3
# 5 "./packing.h" 2

# 1 "./polyvec.h" 1





# 1 "./poly.h" 1






typedef struct {
  int32_t coeffs[256];
} poly;


void poly_reduce(poly *a);

void poly_caddq(poly *a);

void poly_freeze(poly *a);


void poly_add(poly *c, const poly *a, const poly *b);

void poly_sub(poly *c, const poly *a, const poly *b);

void poly_shiftl(poly *a);


void poly_ntt(poly *a);

void poly_invntt_tomont(poly *a);

void poly_pointwise_montgomery(poly *c, const poly *a, const poly *b);


void poly_power2round(poly *a1, poly *a0, const poly *a);

void poly_decompose(poly *a1, poly *a0, const poly *a);

unsigned int poly_make_hint(poly *h, const poly *a0, const poly *a1);

void poly_use_hint(poly *b, const poly *a, const poly *h);


int poly_chknorm(const poly *a, int32_t B);

void poly_uniform(poly *a,
                  const uint8_t seed[32],
                  uint16_t nonce);

void poly_uniform_eta(poly *a,
                      const uint8_t seed[32],
                      uint16_t nonce);

void poly_uniform_gamma1(poly *a,
                         const uint8_t seed[48],
                         uint16_t nonce);

void poly_challenge(poly *c, const uint8_t seed[32]);


void polyeta_pack(uint8_t *r, const poly *a);

void polyeta_unpack(poly *r, const uint8_t *a);


void polyt1_pack(uint8_t *r, const poly *a);

void polyt1_unpack(poly *r, const uint8_t *a);


void polyt0_pack(uint8_t *r, const poly *a);

void polyt0_unpack(poly *r, const uint8_t *a);


void polyz_pack(uint8_t *r, const poly *a);

void polyz_unpack(poly *r, const uint8_t *a);


void polyw1_pack(uint8_t *r, const poly *a);
# 7 "./polyvec.h" 2


typedef struct {
  poly vec[4];
} polyvecl;


void polyvecl_uniform_eta(polyvecl *v, const uint8_t seed[32], uint16_t nonce);


void polyvecl_uniform_gamma1(polyvecl *v, const uint8_t seed[32], uint16_t nonce);


void polyvecl_reduce(polyvecl *v);


void polyvecl_freeze(polyvecl *v);


void polyvecl_add(polyvecl *w, const polyvecl *u, const polyvecl *v);


void polyvecl_ntt(polyvecl *v);

void polyvecl_invntt_tomont(polyvecl *v);

void polyvecl_pointwise_poly_montgomery(polyvecl *r, const poly *a, const polyvecl *v);


void polyvecl_pointwise_acc_montgomery(poly *w,
                                       const polyvecl *u,
                                       const polyvecl *v);



int polyvecl_chknorm(const polyvecl *v, int32_t B);




typedef struct {
  poly vec[4];
} polyveck;


void polyveck_uniform_eta(polyveck *v, const uint8_t seed[32], uint16_t nonce);


void polyveck_reduce(polyveck *v);

void polyveck_caddq(polyveck *v);

void polyveck_freeze(polyveck *v);


void polyveck_add(polyveck *w, const polyveck *u, const polyveck *v);

void polyveck_sub(polyveck *w, const polyveck *u, const polyveck *v);

void polyveck_shiftl(polyveck *v);


void polyveck_ntt(polyveck *v);

void polyveck_invntt_tomont(polyveck *v);

void polyveck_pointwise_poly_montgomery(polyveck *r, const poly *a, const polyveck *v);


int polyveck_chknorm(const polyveck *v, int32_t B);


void polyveck_power2round(polyveck *v1, polyveck *v0, const polyveck *v);

void polyveck_decompose(polyveck *v1, polyveck *v0, const polyveck *v);

unsigned int polyveck_make_hint(polyveck *h,
                                const polyveck *v0,
                                const polyveck *v1);

void polyveck_use_hint(polyveck *w, const polyveck *v, const polyveck *h);


void polyveck_pack_w1(uint8_t r[4*192], const polyveck *w1);


void polyvec_matrix_expand(polyvecl mat[4], const uint8_t rho[32]);


void polyvec_matrix_pointwise_montgomery(polyveck *t, const polyvecl mat[4], const polyvecl *v);
# 7 "./packing.h" 2


void pack_pk(uint8_t pk[(32 + 4*320)],
             const uint8_t rho[32], const polyveck *t1);


void pack_sk(uint8_t sk[(2*32 + 48 + 4*96 + 4*96 + 4*416)],
             const uint8_t rho[32],
             const uint8_t tr[48],
             const uint8_t key[32],
             const polyveck *t0,
             const polyvecl *s1,
             const polyveck *s2);


void pack_sig(uint8_t sig[(32 + 4*576 + (80 + 4))],
              const uint8_t c[32], const polyvecl *z, const polyveck *h);


void unpack_pk(uint8_t rho[32], polyveck *t1,
               const uint8_t pk[(32 + 4*320)]);


void unpack_sk(uint8_t rho[32],
               uint8_t tr[48],
               uint8_t key[32],
               polyveck *t0,
               polyvecl *s1,
               polyveck *s2,
               const uint8_t sk[(2*32 + 48 + 4*96 + 4*96 + 4*416)]);


int unpack_sig(uint8_t c[32], polyvecl *z, polyveck *h,
               const uint8_t sig[(32 + 4*576 + (80 + 4))]);
# 3 "packing.c" 2
# 15 "packing.c"
void pack_pk(uint8_t pk[(32 + 4*320)],
             const uint8_t rho[32],
             const polyveck *t1)
{_ssdm_SpecArrayDimSize(pk, 1312);_ssdm_SpecArrayDimSize(rho, 32);
  unsigned int i;

  for(i = 0; i < 32; ++i)
    pk[i] = rho[i];
  pk += 32;

  for(i = 0; i < 4; ++i)
    polyt1_pack(pk + i*320, &t1->vec[i]);
}
# 38 "packing.c"
void unpack_pk(uint8_t rho[32],
               polyveck *t1,
               const uint8_t pk[(32 + 4*320)])
{_ssdm_SpecArrayDimSize(rho, 32);_ssdm_SpecArrayDimSize(pk, 1312);
  unsigned int i;

  for(i = 0; i < 32; ++i){
#pragma HLS PIPELINE
 rho[i] = pk[i];
  }
  pk += 32;

  for(i = 0; i < 4; ++i){
#pragma HLS PIPELINE
 polyt1_unpack(&t1->vec[i], pk + i*320);
  }
}
# 69 "packing.c"
void pack_sk(uint8_t sk[(2*32 + 48 + 4*96 + 4*96 + 4*416)],
             const uint8_t rho[32],
             const uint8_t tr[48],
             const uint8_t key[32],
             const polyveck *t0,
             const polyvecl *s1,
             const polyveck *s2)
{_ssdm_SpecArrayDimSize(sk, 2544);_ssdm_SpecArrayDimSize(rho, 32);_ssdm_SpecArrayDimSize(tr, 48);_ssdm_SpecArrayDimSize(key, 32);
  unsigned int i;

  for(i = 0; i < 32; ++i)
    sk[i] = rho[i];
  sk += 32;

  for(i = 0; i < 32; ++i)
    sk[i] = key[i];
  sk += 32;

  for(i = 0; i < 48; ++i)
    sk[i] = tr[i];
  sk += 48;

  for(i = 0; i < 4; ++i)
    polyeta_pack(sk + i*96, &s1->vec[i]);
  sk += 4*96;

  for(i = 0; i < 4; ++i)
    polyeta_pack(sk + i*96, &s2->vec[i]);
  sk += 4*96;

  for(i = 0; i < 4; ++i)
    polyt0_pack(sk + i*416, &t0->vec[i]);
}
# 116 "packing.c"
void unpack_sk(uint8_t rho[32],
               uint8_t tr[48],
               uint8_t key[32],
               polyveck *t0,
               polyvecl *s1,
               polyveck *s2,
               const uint8_t sk[(2*32 + 48 + 4*96 + 4*96 + 4*416)])
{_ssdm_SpecArrayDimSize(rho, 32);_ssdm_SpecArrayDimSize(tr, 48);_ssdm_SpecArrayDimSize(key, 32);_ssdm_SpecArrayDimSize(sk, 2544);
  unsigned int i;

  for(i = 0; i < 32; ++i){
#pragma HLS pipeline
 rho[i] = sk[i];
  }

  sk += 32;

  for(i = 0; i < 32; ++i){
#pragma HLS pipeline
 key[i] = sk[i];
  }

  sk += 32;

  for(i = 0; i < 48; ++i){
#pragma HLS pipeline
 tr[i] = sk[i];
  }
  sk += 48;

  for(i=0; i < 4; ++i){
#pragma HLS pipeline
 polyeta_unpack(&s1->vec[i], sk + i*96);
  }

  sk += 4*96;

  for(i=0; i < 4; ++i){
#pragma HLS pipeline
 polyeta_unpack(&s2->vec[i], sk + i*96);
  }

  sk += 4*96;

  for(i=0; i < 4; ++i){
#pragma HLS pipeline
 polyt0_unpack(&t0->vec[i], sk + i*416);
  }
}
# 176 "packing.c"
void pack_sig(uint8_t sig[(32 + 4*576 + (80 + 4))],
              const uint8_t c[32],
              const polyvecl *z,
              const polyveck *h)
{_ssdm_SpecArrayDimSize(sig, 2420);_ssdm_SpecArrayDimSize(c, 32);
  unsigned int i, j, k;

  for(i=0; i < 32; ++i)
  {
#pragma HLS pipeline
 sig[i] = c[i];
  }
  sig += 32;

  for(i = 0; i < 4; ++i)
  {
#pragma HLS pipeline
 polyz_pack(sig + i*576, &z->vec[i]);
  }

  sig += 4*576;


  for(i = 0; i < 80 + 4; ++i)
  {
#pragma HLS pipeline
 sig[i] = 0;
  }

  k = 0;
  for(i = 0; i < 4; ++i) {
#pragma HLS pipeline
 for(j = 0; j < 256; ++j)
      if(h->vec[i].coeffs[j] != 0)
        sig[k++] = j;

    sig[80 + i] = k;
  }
}
# 229 "packing.c"
int unpack_sig(uint8_t c[32],
               polyvecl *z,
               polyveck *h,
               const uint8_t sig[(32 + 4*576 + (80 + 4))])
{_ssdm_SpecArrayDimSize(c, 32);_ssdm_SpecArrayDimSize(sig, 2420);
  unsigned int i, j, k;

  for(i = 0; i < 32; ++i)
    c[i] = sig[i];
  sig += 32;

  for(i = 0; i < 4; ++i)
    polyz_unpack(&z->vec[i], sig + i*576);
  sig += 4*576;


  k = 0;
  for(i = 0; i < 4; ++i) {
    for(j = 0; j < 256; ++j)
      h->vec[i].coeffs[j] = 0;

    if(sig[80 + i] < k || sig[80 + i] > 80)
      return 1;

    for(j = k; j < sig[80 + i]; ++j) {

      if(j > k && sig[j] <= sig[j-1]) return 1;
      h->vec[i].coeffs[sig[j]] = 1;
    }

    k = sig[80 + i];
  }


  for(j = k; j < 80; ++j)
    if(sig[j])
      return 1;

  return 0;
}

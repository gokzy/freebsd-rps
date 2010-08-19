-- This file is generated by SWIG. Do *not* modify by hand.
--

with Interfaces.C.Extensions;


package llvm is

   -- LLVMCtxt
   --
   type LLVMCtxt is new Interfaces.C.Extensions.opaque_structure_def;

   type LLVMCtxt_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMCtxt;

   type LLVMCtxt_view is access all llvm.LLVMCtxt;

   -- LLVMContextRef
   --
   type LLVMContextRef is access all llvm.LLVMCtxt;

   type LLVMContextRef_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMContextRef;

   type LLVMContextRef_view is access all llvm.LLVMContextRef;

   -- LLVMOpaqueModule
   --
   type LLVMOpaqueModule is new Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueModule_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMOpaqueModule;

   type LLVMOpaqueModule_view is access all llvm.LLVMOpaqueModule;

   -- LLVMModuleRef
   --
   type LLVMModuleRef is access all llvm.LLVMOpaqueModule;

   type LLVMModuleRef_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMModuleRef;

   type LLVMModuleRef_view is access all llvm.LLVMModuleRef;

   -- LLVMOpaqueType
   --
   type LLVMOpaqueType is new Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueType_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMOpaqueType;

   type LLVMOpaqueType_view is access all llvm.LLVMOpaqueType;

   -- LLVMTypeRef
   --
   type LLVMTypeRef is access all llvm.LLVMOpaqueType;

   type LLVMTypeRef_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMTypeRef;

   type LLVMTypeRef_view is access all llvm.LLVMTypeRef;

   -- LLVMOpaqueTypeHandle
   --
   type LLVMOpaqueTypeHandle is new
     Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueTypeHandle_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMOpaqueTypeHandle;

   type LLVMOpaqueTypeHandle_view is access all llvm.LLVMOpaqueTypeHandle;

   -- LLVMTypeHandleRef
   --
   type LLVMTypeHandleRef is access all llvm.LLVMOpaqueTypeHandle;

   type LLVMTypeHandleRef_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMTypeHandleRef;

   type LLVMTypeHandleRef_view is access all llvm.LLVMTypeHandleRef;

   -- LLVMOpaqueValue
   --
   type LLVMOpaqueValue is new Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueValue_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMOpaqueValue;

   type LLVMOpaqueValue_view is access all llvm.LLVMOpaqueValue;

   -- LLVMValueRef
   --
   type LLVMValueRef is access all llvm.LLVMOpaqueValue;

   type LLVMValueRef_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMValueRef;

   type LLVMValueRef_view is access all llvm.LLVMValueRef;

   -- LLVMOpaqueBasicBlock
   --
   type LLVMOpaqueBasicBlock is new
     Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueBasicBlock_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMOpaqueBasicBlock;

   type LLVMOpaqueBasicBlock_view is access all llvm.LLVMOpaqueBasicBlock;

   -- LLVMBasicBlockRef
   --
   type LLVMBasicBlockRef is access all llvm.LLVMOpaqueBasicBlock;

   type LLVMBasicBlockRef_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMBasicBlockRef;

   type LLVMBasicBlockRef_view is access all llvm.LLVMBasicBlockRef;

   -- LLVMOpaqueBuilder
   --
   type LLVMOpaqueBuilder is new Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueBuilder_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMOpaqueBuilder;

   type LLVMOpaqueBuilder_view is access all llvm.LLVMOpaqueBuilder;

   -- LLVMBuilderRef
   --
   type LLVMBuilderRef is access all llvm.LLVMOpaqueBuilder;

   type LLVMBuilderRef_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMBuilderRef;

   type LLVMBuilderRef_view is access all llvm.LLVMBuilderRef;

   -- LLVMOpaqueModuleProvider
   --
   type LLVMOpaqueModuleProvider is new
     Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueModuleProvider_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMOpaqueModuleProvider;

   type LLVMOpaqueModuleProvider_view is access all
     llvm.LLVMOpaqueModuleProvider;

   -- LLVMModuleProviderRef
   --
   type LLVMModuleProviderRef is access all llvm.LLVMOpaqueModuleProvider;

   type LLVMModuleProviderRef_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMModuleProviderRef;

   type LLVMModuleProviderRef_view is access all llvm.LLVMModuleProviderRef;

   -- LLVMOpaqueMemoryBuffer
   --
   type LLVMOpaqueMemoryBuffer is new
     Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaqueMemoryBuffer_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMOpaqueMemoryBuffer;

   type LLVMOpaqueMemoryBuffer_view is access all llvm.LLVMOpaqueMemoryBuffer;

   -- LLVMMemoryBufferRef
   --
   type LLVMMemoryBufferRef is access all llvm.LLVMOpaqueMemoryBuffer;

   type LLVMMemoryBufferRef_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMMemoryBufferRef;

   type LLVMMemoryBufferRef_view is access all llvm.LLVMMemoryBufferRef;

   -- LLVMOpaquePassManager
   --
   type LLVMOpaquePassManager is new
     Interfaces.C.Extensions.opaque_structure_def;

   type LLVMOpaquePassManager_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMOpaquePassManager;

   type LLVMOpaquePassManager_view is access all llvm.LLVMOpaquePassManager;

   -- LLVMPassManagerRef
   --
   type LLVMPassManagerRef is access all llvm.LLVMOpaquePassManager;

   type LLVMPassManagerRef_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMPassManagerRef;

   type LLVMPassManagerRef_view is access all llvm.LLVMPassManagerRef;

   -- LLVMAttribute
   --
   type LLVMAttribute is (
      LLVMZExtAttribute,
      LLVMSExtAttribute,
      LLVMNoReturnAttribute,
      LLVMInRegAttribute,
      LLVMStructRetAttribute,
      LLVMNoUnwindAttribute,
      LLVMNoAliasAttribute,
      LLVMByValAttribute,
      LLVMNestAttribute,
      LLVMReadNoneAttribute,
      LLVMReadOnlyAttribute,
      LLVMNoInlineAttribute,
      LLVMAlwaysInlineAttribute,
      LLVMOptimizeForSizeAttribute,
      LLVMStackProtectAttribute,
      LLVMStackProtectReqAttribute,
      LLVMNoCaptureAttribute,
      LLVMNoRedZoneAttribute,
      LLVMNoImplicitFloatAttribute,
      LLVMNakedAttribute);

   for LLVMAttribute use
     (LLVMZExtAttribute            => 1,
      LLVMSExtAttribute            => 2,
      LLVMNoReturnAttribute        => 4,
      LLVMInRegAttribute           => 8,
      LLVMStructRetAttribute       => 16,
      LLVMNoUnwindAttribute        => 32,
      LLVMNoAliasAttribute         => 64,
      LLVMByValAttribute           => 128,
      LLVMNestAttribute            => 256,
      LLVMReadNoneAttribute        => 512,
      LLVMReadOnlyAttribute        => 1024,
      LLVMNoInlineAttribute        => 2048,
      LLVMAlwaysInlineAttribute    => 4096,
      LLVMOptimizeForSizeAttribute => 8192,
      LLVMStackProtectAttribute    => 16384,
      LLVMStackProtectReqAttribute => 32768,
      LLVMNoCaptureAttribute       => 2097152,
      LLVMNoRedZoneAttribute       => 4194304,
      LLVMNoImplicitFloatAttribute => 8388608,
      LLVMNakedAttribute           => 16777216);

   pragma Convention (C, LLVMAttribute);

   type LLVMAttribute_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMAttribute;

   type LLVMAttribute_view is access all llvm.LLVMAttribute;

   -- LLVMTypeKind
   --
   type LLVMTypeKind is (
      LLVMVoidTypeKind,
      LLVMFloatTypeKind,
      LLVMDoubleTypeKind,
      LLVMX86_FP80TypeKind,
      LLVMFP128TypeKind,
      LLVMPPC_FP128TypeKind,
      LLVMLabelTypeKind,
      LLVMIntegerTypeKind,
      LLVMFunctionTypeKind,
      LLVMStructTypeKind,
      LLVMArrayTypeKind,
      LLVMPointerTypeKind,
      LLVMOpaqueTypeKind,
      LLVMVectorTypeKind,
      LLVMMetadataTypeKind);

   for LLVMTypeKind use
     (LLVMVoidTypeKind      => 0,
      LLVMFloatTypeKind     => 1,
      LLVMDoubleTypeKind    => 2,
      LLVMX86_FP80TypeKind  => 3,
      LLVMFP128TypeKind     => 4,
      LLVMPPC_FP128TypeKind => 5,
      LLVMLabelTypeKind     => 6,
      LLVMIntegerTypeKind   => 7,
      LLVMFunctionTypeKind  => 8,
      LLVMStructTypeKind    => 9,
      LLVMArrayTypeKind     => 10,
      LLVMPointerTypeKind   => 11,
      LLVMOpaqueTypeKind    => 12,
      LLVMVectorTypeKind    => 13,
      LLVMMetadataTypeKind  => 14);

   pragma Convention (C, LLVMTypeKind);

   type LLVMTypeKind_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMTypeKind;

   type LLVMTypeKind_view is access all llvm.LLVMTypeKind;

   -- LLVMLinkage
   --
   type LLVMLinkage is (
      LLVMExternalLinkage,
      LLVMAvailableExternallyLinkage,
      LLVMLinkOnceAnyLinkage,
      LLVMLinkOnceODRLinkage,
      LLVMWeakAnyLinkage,
      LLVMWeakODRLinkage,
      LLVMAppendingLinkage,
      LLVMInternalLinkage,
      LLVMPrivateLinkage,
      LLVMDLLImportLinkage,
      LLVMDLLExportLinkage,
      LLVMExternalWeakLinkage,
      LLVMGhostLinkage,
      LLVMCommonLinkage,
      LLVMLinkerPrivateLinkage,
      LLVMLinkerPrivateWeakLinkage);

   for LLVMLinkage use
     (LLVMExternalLinkage            => 0,
      LLVMAvailableExternallyLinkage => 1,
      LLVMLinkOnceAnyLinkage         => 2,
      LLVMLinkOnceODRLinkage         => 3,
      LLVMWeakAnyLinkage             => 4,
      LLVMWeakODRLinkage             => 5,
      LLVMAppendingLinkage           => 6,
      LLVMInternalLinkage            => 7,
      LLVMPrivateLinkage             => 8,
      LLVMDLLImportLinkage           => 9,
      LLVMDLLExportLinkage           => 10,
      LLVMExternalWeakLinkage        => 11,
      LLVMGhostLinkage               => 12,
      LLVMCommonLinkage              => 13,
      LLVMLinkerPrivateLinkage       => 14,
      LLVMLinkerPrivateWeakLinkage   => 15);

   pragma Convention (C, LLVMLinkage);

   type LLVMLinkage_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMLinkage;

   type LLVMLinkage_view is access all llvm.LLVMLinkage;

   -- LLVMVisibility
   --
   type LLVMVisibility is (
      LLVMDefaultVisibility,
      LLVMHiddenVisibility,
      LLVMProtectedVisibility);

   for LLVMVisibility use
     (LLVMDefaultVisibility   => 0,
      LLVMHiddenVisibility    => 1,
      LLVMProtectedVisibility => 2);

   pragma Convention (C, LLVMVisibility);

   type LLVMVisibility_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMVisibility;

   type LLVMVisibility_view is access all llvm.LLVMVisibility;

   -- LLVMCallConv
   --
   type LLVMCallConv is (
      LLVMCCallConv,
      LLVMFastCallConv,
      LLVMColdCallConv,
      LLVMX86StdcallCallConv,
      LLVMX86FastcallCallConv);

   for LLVMCallConv use
     (LLVMCCallConv           => 0,
      LLVMFastCallConv        => 8,
      LLVMColdCallConv        => 9,
      LLVMX86StdcallCallConv  => 64,
      LLVMX86FastcallCallConv => 65);

   pragma Convention (C, LLVMCallConv);

   type LLVMCallConv_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMCallConv;

   type LLVMCallConv_view is access all llvm.LLVMCallConv;

   -- LLVMIntPredicate
   --
   type LLVMIntPredicate is (
      LLVMIntEQ,
      LLVMIntNE,
      LLVMIntUGT,
      LLVMIntUGE,
      LLVMIntULT,
      LLVMIntULE,
      LLVMIntSGT,
      LLVMIntSGE,
      LLVMIntSLT,
      LLVMIntSLE);

   for LLVMIntPredicate use
     (LLVMIntEQ  => 32,
      LLVMIntNE  => 33,
      LLVMIntUGT => 34,
      LLVMIntUGE => 35,
      LLVMIntULT => 36,
      LLVMIntULE => 37,
      LLVMIntSGT => 38,
      LLVMIntSGE => 39,
      LLVMIntSLT => 40,
      LLVMIntSLE => 41);

   pragma Convention (C, LLVMIntPredicate);

   type LLVMIntPredicate_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.LLVMIntPredicate;

   type LLVMIntPredicate_view is access all llvm.LLVMIntPredicate;

   -- LLVMRealPredicate
   --
   type LLVMRealPredicate is (
      LLVMRealPredicateFalse,
      LLVMRealOEQ,
      LLVMRealOGT,
      LLVMRealOGE,
      LLVMRealOLT,
      LLVMRealOLE,
      LLVMRealONE,
      LLVMRealORD,
      LLVMRealUNO,
      LLVMRealUEQ,
      LLVMRealUGT,
      LLVMRealUGE,
      LLVMRealULT,
      LLVMRealULE,
      LLVMRealUNE,
      LLVMRealPredicateTrue);

   for LLVMRealPredicate use
     (LLVMRealPredicateFalse => 0,
      LLVMRealOEQ            => 1,
      LLVMRealOGT            => 2,
      LLVMRealOGE            => 3,
      LLVMRealOLT            => 4,
      LLVMRealOLE            => 5,
      LLVMRealONE            => 6,
      LLVMRealORD            => 7,
      LLVMRealUNO            => 8,
      LLVMRealUEQ            => 9,
      LLVMRealUGT            => 10,
      LLVMRealUGE            => 11,
      LLVMRealULT            => 12,
      LLVMRealULE            => 13,
      LLVMRealUNE            => 14,
      LLVMRealPredicateTrue  => 15);

   pragma Convention (C, LLVMRealPredicate);

   type LLVMRealPredicate_array is
     array (Interfaces.C.size_t range <>)
            of aliased llvm.LLVMRealPredicate;

   type LLVMRealPredicate_view is access all llvm.LLVMRealPredicate;

   -- ModuleProvider
   --
   type ModuleProvider is new Interfaces.C.Extensions.incomplete_class_def;

   type ModuleProvider_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.ModuleProvider;

   type ModuleProvider_view is access all llvm.ModuleProvider;

   -- MemoryBuffer
   --
   type MemoryBuffer is new Interfaces.C.Extensions.incomplete_class_def;

   type MemoryBuffer_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.MemoryBuffer;

   type MemoryBuffer_view is access all llvm.MemoryBuffer;

   -- PassManagerBase
   --
   type PassManagerBase is new Interfaces.C.Extensions.incomplete_class_def;

   type PassManagerBase_array is
     array (Interfaces.C.size_t range <>) of aliased llvm.PassManagerBase;

   type PassManagerBase_view is access all llvm.PassManagerBase;

end llvm;
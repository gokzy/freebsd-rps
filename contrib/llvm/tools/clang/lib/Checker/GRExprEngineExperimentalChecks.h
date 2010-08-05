//=-- GRExprEngineExperimentalChecks.h ------------------------------*- C++ -*-=
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines functions to instantiate and register experimental
//  checks in GRExprEngine.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CLANG_GREXPRENGINE_EXPERIMENTAL_CHECKS
#define LLVM_CLANG_GREXPRENGINE_EXPERIMENTAL_CHECKS

namespace clang {

class GRExprEngine;

void RegisterCStringChecker(GRExprEngine &Eng);
void RegisterPthreadLockChecker(GRExprEngine &Eng);
void RegisterMallocChecker(GRExprEngine &Eng);
void RegisterStreamChecker(GRExprEngine &Eng);
void RegisterIdempotentOperationChecker(GRExprEngine &Eng);

} // end clang namespace
#endif
//===-- BlackfinTargetMachine.cpp - Define TargetMachine for Blackfin -----===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//
//===----------------------------------------------------------------------===//

#include "BlackfinTargetMachine.h"
#include "Blackfin.h"
#include "llvm/PassManager.h"
#include "llvm/Target/TargetRegistry.h"

using namespace llvm;

extern "C" void LLVMInitializeBlackfinTarget() {
  RegisterTargetMachine<BlackfinTargetMachine> X(TheBlackfinTarget);
}

BlackfinTargetMachine::BlackfinTargetMachine(const Target &T,
                                             const std::string &TT,
                                             const std::string &CPU,
                                             const std::string &FS)
  : LLVMTargetMachine(T, TT, CPU, FS),
    DataLayout("e-p:32:32-i64:32-f64:32-n32"),
    Subtarget(TT, CPU, FS),
    TLInfo(*this),
    TSInfo(*this),
    InstrInfo(Subtarget),
    FrameLowering(Subtarget) {
}

bool BlackfinTargetMachine::addInstSelector(PassManagerBase &PM,
                                            CodeGenOpt::Level OptLevel) {
  PM.add(createBlackfinISelDag(*this, OptLevel));
  return false;
}

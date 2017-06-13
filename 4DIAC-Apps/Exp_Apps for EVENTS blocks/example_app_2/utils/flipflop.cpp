/*************************************************************************
 *** FORTE Library Element
 ***
 *** This file was generated using the 4DIAC FORTE Export Filter V1.0.x!
 ***
 *** Name: flipflop
 *** Description: t flips
 *** Version: 
 ***     0.0: 2017-05-17/4DIAC-IDE - 4DIAC-Consortium - 
 ***     1.0: 2016-05-26/AZ - fortiss GmbH - 
 ***     1.1: 2017-05-17/me - me - 
 *************************************************************************/

#include "flipflop.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "flipflop_gen.cpp"
#endif
st

DEFINE_FIRMWARE_FB(FORTE_flipflop, g_nStringIdflipflop)

const CStringDictionary::TStringId FORTE_flipflop::scm_anDataOutputNames[] = {g_nStringIdQO};

const CStringDictionary::TStringId FORTE_flipflop::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL};

const TForteInt16 FORTE_flipflop::scm_anEIWithIndexes[] = {-1};
const CStringDictionary::TStringId FORTE_flipflop::scm_anEventInputNames[] = {g_nStringIdREQ};

const TDataIOID FORTE_flipflop::scm_anEOWith[] = {0, 255};
const TForteInt16 FORTE_flipflop::scm_anEOWithIndexes[] = {0, -1};
const CStringDictionary::TStringId FORTE_flipflop::scm_anEventOutputNames[] = {g_nStringIdCNF};

const SFBInterfaceSpec FORTE_flipflop::scm_stFBInterfaceSpec = {
  1,  scm_anEventInputNames,  0,  scm_anEIWithIndexes,
  1,  scm_anEventOutputNames,  scm_anEOWith, scm_anEOWithIndexes,  0,  0, 0, 
  1,  scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, 0
};

void FORTE_flipflop::alg_initialize(void){

QO() = QI;
}

void FORTE_flipflop::alg_deInitialize(void){

QO() = false;
}

void FORTE_flipflop::alg_normalOperation(void){
QO() = QI;

if((true == QI)){
/*   only perform normal operation of QI is true*/

};

}


void FORTE_flipflop::enterStateIDLE(void){
  m_nECCState = scm_nStateIDLE;
}

void FORTE_flipflop::enterStateInit(void){
  m_nECCState = scm_nStateInit;
  alg_initialize();
}

void FORTE_flipflop::enterStateNormalOp(void){
  m_nECCState = scm_nStateNormalOp;
  alg_normalOperation();
  sendOutputEvent( scm_nEventCNFID);
}

void FORTE_flipflop::enterStateInitialized(void){
  m_nECCState = scm_nStateInitialized;
}

void FORTE_flipflop::enterStateDeInit(void){
  m_nECCState = scm_nStateDeInit;
  alg_deInitialize();
}

void FORTE_flipflop::executeEvent(int pa_nEIID){
  bool bTransitionCleared;
  do{
    bTransitionCleared = true;
    switch(m_nECCState){
      case scm_nStateIDLE:
        if(scm_nEventREQID == pa_nEIID)
          enterStateState();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateInit:
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateNormalOp:
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateInitialized:
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateDeInit:
          bTransitionCleared  = false; //no transition cleared
        break;
      default:
      DEVLOG_ERROR("The state is not in the valid range! The state value is: %d. The max value can be: 4.", m_nECCState.operator TForteUInt16 ());
        m_nECCState = 0; //0 is always the initial state
        break;
    }
    pa_nEIID = cg_nInvalidEventID;  // we have to clear the event after the first check in order to ensure correct behavior
  }while(bTransitionCleared);
}



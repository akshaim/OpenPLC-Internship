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

#ifndef _FLIPFLOP_H_
#define _FLIPFLOP_H_

#include <basicfb.h>
#include <forte_bool.h>

class FORTE_flipflop: public CBasicFB{
  DECLARE_FIRMWARE_FB(FORTE_flipflop)

private:
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  CIEC_BOOL &QO() {
    return *static_cast<CIEC_BOOL*>(getDO(0));
  };

  static const TEventID scm_nEventREQID = 0;
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];

  static const TEventID scm_nEventCNFID = 0;
  static const TForteInt16 scm_anEOWithIndexes[];
  static const TDataIOID scm_anEOWith[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

   FORTE_BASIC_FB_DATA_ARRAY(1, 0, 1, 0, 0);
  void alg_initialize(void);
  void alg_deInitialize(void);
  void alg_normalOperation(void);
  static const TForteInt16 scm_nStateIDLE = 0;
  static const TForteInt16 scm_nStateInit = 1;
  static const TForteInt16 scm_nStateNormalOp = 2;
  static const TForteInt16 scm_nStateInitialized = 3;
  static const TForteInt16 scm_nStateDeInit = 4;

  void enterStateIDLE(void);
  void enterStateInit(void);
  void enterStateNormalOp(void);
  void enterStateInitialized(void);
  void enterStateDeInit(void);

  virtual void executeEvent(int pa_nEIID);

public:
  FORTE_flipflop(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) : 
       CBasicFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId,
              0, m_anFBConnData, m_anFBVarsData){
  };

  virtual ~FORTE_flipflop(){};

};

#endif //close the ifdef sequence from the beginning of the file


Fri Oct  1 18:30:13 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD3/A3/dat89.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      700
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      600
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m89.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:  -263.459891002933        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3935E+02  4.3934E+01  2.1500E+02 -4.8963E+01  1.4742E+02  5.8872E+01 -8.6667E+01 -2.3128E+02 -3.7285E+01 -9.1839E+01
            -3.8841E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1643.19327351641        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0021E+00  1.0623E+00  8.8917E-01  1.0985E+00  9.4588E-01  7.3766E-01  9.6876E-01  9.9224E-01  8.8543E-01  9.2689E-01
             5.2961E+00
 PARAMETER:  1.0211E-01  1.6045E-01 -1.7469E-02  1.9399E-01  4.4362E-02 -2.0427E-01  6.8265E-02  9.2211E-02 -2.1686E-02  2.4078E-02
             1.7670E+00
 GRADIENT:  -6.8478E+01 -2.4462E+01 -2.0380E+01 -1.3418E+00  1.7361E+01 -1.9497E+01  1.5766E+01  8.1286E+00  2.5679E+01  2.4661E+01
             4.8575E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1703.58915733379        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.8169E-01  6.0597E-01  4.4281E-01  1.4152E+00  4.6721E-01  7.9175E-01  1.3426E+00  1.5820E-01  1.0146E+00  1.9974E-01
             4.5481E+00
 PARAMETER:  8.1518E-02 -4.0093E-01 -7.1462E-01  4.4730E-01 -6.6097E-01 -1.3351E-01  3.9460E-01 -1.7439E+00  1.1449E-01 -1.5107E+00
             1.6147E+00
 GRADIENT:  -1.0680E+02  5.3470E+01  5.9055E+00  1.8454E+02 -1.4718E+01 -1.6525E+01 -1.8252E+00  4.9066E-01  2.9578E+01  7.7852E-01
             3.8847E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1816.23369956046        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      272
 NPARAMETR:  9.5691E-01  6.2121E-01  4.4066E-01  1.2178E+00  4.9435E-01  8.6170E-01  1.5685E+00  1.1008E-02  1.0002E+00  3.5074E-01
             2.8138E+00
 PARAMETER:  5.5951E-02 -3.7609E-01 -7.1949E-01  2.9708E-01 -6.0452E-01 -4.8851E-02  5.5010E-01 -4.4091E+00  1.0018E-01 -9.4770E-01
             1.1345E+00
 GRADIENT:  -7.9149E+01  1.3140E+01 -1.8775E+01  2.0548E+01  4.7264E+01 -1.1227E+00  1.0085E+01  3.1307E-03  2.1278E+01  3.3131E-01
            -2.0036E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1829.90870872884        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      447
 NPARAMETR:  9.7882E-01  4.0792E-01  2.8552E-01  1.2097E+00  3.2810E-01  8.5744E-01  1.6953E+00  1.4952E-02  8.7871E-01  1.2416E-01
             2.8676E+00
 PARAMETER:  7.8589E-02 -7.9667E-01 -1.1534E+00  2.9034E-01 -1.0144E+00 -5.3803E-02  6.2789E-01 -4.1029E+00 -2.9303E-02 -1.9862E+00
             1.1535E+00
 GRADIENT:  -1.7966E+01  3.8239E+00 -1.7775E+01  1.1564E+01  2.8153E+01 -1.5047E+00 -3.1059E+00 -3.3561E-03 -1.6615E+01 -1.2199E+00
             9.8287E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1834.01591525550        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      622
 NPARAMETR:  9.8783E-01  3.1875E-01  2.2642E-01  1.1531E+00  2.6517E-01  8.6734E-01  1.7605E+00  1.0000E-02  1.0287E+00  2.8033E-01
             2.7740E+00
 PARAMETER:  8.7751E-02 -1.0434E+00 -1.3854E+00  2.4247E-01 -1.2274E+00 -4.2320E-02  6.6559E-01 -6.0110E+00  1.2832E-01 -1.1718E+00
             1.1203E+00
 GRADIENT:   1.3835E+01 -3.4514E+00 -6.9081E-01 -2.1986E+01  8.3885E+00  1.1634E+00  1.5361E+00  0.0000E+00  5.5603E+00 -1.0413E+00
            -2.2502E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1834.34628486892        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      800
 NPARAMETR:  9.8380E-01  3.2648E-01  2.3237E-01  1.1730E+00  2.6997E-01  8.6445E-01  1.7306E+00  1.0000E-02  9.9947E-01  3.0402E-01
             2.7802E+00
 PARAMETER:  8.3666E-02 -1.0194E+00 -1.3594E+00  2.5958E-01 -1.2095E+00 -4.5657E-02  6.4846E-01 -5.9698E+00  9.9473E-02 -1.0907E+00
             1.1225E+00
 GRADIENT:   1.4724E-01  2.0184E-01 -1.2670E-01 -1.8215E-01 -7.8507E-01 -6.7825E-03  2.0898E-01  0.0000E+00  9.2096E-02  1.0604E-02
             3.0290E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1834.34628486892        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      822
 NPARAMETR:  9.8380E-01  3.2648E-01  2.3237E-01  1.1730E+00  2.6997E-01  8.6445E-01  1.7306E+00  1.0000E-02  9.9947E-01  3.0402E-01
             2.7802E+00
 PARAMETER:  8.3666E-02 -1.0194E+00 -1.3594E+00  2.5958E-01 -1.2095E+00 -4.5657E-02  6.4846E-01 -5.9698E+00  9.9473E-02 -1.0907E+00
             1.1225E+00
 GRADIENT:   1.4724E-01  2.0184E-01 -1.2670E-01 -1.8215E-01 -7.8507E-01 -6.7825E-03  2.0898E-01  0.0000E+00  9.2096E-02  1.0604E-02
             3.0290E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      822
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.1416E-04  2.3663E-02 -3.7232E-04 -1.5382E-02  1.9506E-02
 SE:             2.9020E-02  2.3809E-02  2.6997E-04  2.6619E-02  1.3057E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8861E-01  3.2027E-01  1.6786E-01  5.6336E-01  1.3519E-01

 ETASHRINKSD(%)  2.7805E+00  2.0238E+01  9.9096E+01  1.0823E+01  5.6257E+01
 ETASHRINKVR(%)  5.4838E+00  3.6380E+01  9.9992E+01  2.0474E+01  8.0866E+01
 EBVSHRINKSD(%)  2.8443E+00  1.7955E+01  9.9088E+01  1.0091E+01  5.7120E+01
 EBVSHRINKVR(%)  5.6077E+00  3.2686E+01  9.9992E+01  1.9164E+01  8.1613E+01
 RELATIVEINF(%)  9.4202E+01  1.2892E+01  3.8891E-04  4.6711E+01  5.6481E-01
 EPSSHRINKSD(%)  2.3051E+01
 EPSSHRINKVR(%)  4.0789E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1834.3462848689203     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -731.62004502331320     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.51
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1834.346       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  3.26E-01  2.32E-01  1.17E+00  2.70E-01  8.64E-01  1.73E+00  1.00E-02  9.99E-01  3.04E-01  2.78E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       13.565
Stop Time:
Fri Oct  1 18:30:28 CDT 2021

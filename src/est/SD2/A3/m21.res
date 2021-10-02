Fri Oct  1 10:25:30 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat21.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m21.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   55.3273931158012        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8436E+02  1.5334E+02  3.0218E+02  6.3049E+01  3.1646E+02  6.7412E+01 -1.3868E+02 -2.6325E+02 -7.7190E+01 -2.3880E+02
            -3.6016E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1425.14432459884        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1479E+00  9.2874E-01  7.8900E-01  1.2364E+00  7.7684E-01  7.9025E-01  1.0945E+00  1.0163E+00  1.1139E+00  1.1512E+00
             5.7357E+00
 PARAMETER:  2.3793E-01  2.6070E-02 -1.3699E-01  3.1221E-01 -1.5252E-01 -1.3540E-01  1.9034E-01  1.1612E-01  2.0789E-01  2.4084E-01
             1.8467E+00
 GRADIENT:   1.3450E+02  1.6940E+01 -1.0167E+01  5.2447E+01 -2.1841E+01 -1.4310E+01  1.0808E+01  9.7582E+00  3.1030E+01  3.4329E+01
             3.3655E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1471.44516019573        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.1022E+00  4.4983E-01  3.6182E-01  1.4896E+00  3.0334E-01  7.7954E-01  1.4805E+00  3.1994E-01  1.4106E+00  1.0208E+00
             4.3904E+00
 PARAMETER:  1.9732E-01 -6.9888E-01 -9.1662E-01  4.9848E-01 -1.0929E+00 -1.4905E-01  4.9238E-01 -1.0396E+00  4.4404E-01  1.2059E-01
             1.5794E+00
 GRADIENT:   8.1537E+01  8.6377E+01  1.0827E+02  2.1902E+02 -1.8067E+02 -3.4894E+01  2.6672E-01  1.6207E+00  2.2828E+01  3.7876E+01
             2.4687E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1599.24892043065        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      293
 NPARAMETR:  9.9795E-01  4.3586E-01  2.6379E-01  1.2334E+00  3.0171E-01  8.8793E-01  6.7256E-01  1.0000E-02  1.2823E+00  6.4312E-01
             2.8659E+00
 PARAMETER:  9.7950E-02 -7.3044E-01 -1.2326E+00  3.0981E-01 -1.0983E+00 -1.8863E-02 -2.9667E-01 -5.5077E+00  3.4866E-01 -3.4143E-01
             1.1529E+00
 GRADIENT:  -1.4124E+02  5.1915E+01  2.4907E+01  1.2151E+02 -2.7089E+01 -1.3639E+01 -1.3447E+00  0.0000E+00 -1.6667E+01  4.8846E+00
            -1.4268E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1627.95346101183        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  1.0458E+00  2.9484E-01  1.5104E-01  9.7576E-01  2.0431E-01  9.0133E-01  2.0359E-02  1.0000E-02  1.5126E+00  7.0205E-01
             2.6836E+00
 PARAMETER:  1.4483E-01 -1.1213E+00 -1.7902E+00  7.5458E-02 -1.4881E+00 -3.8798E-03 -3.7942E+00 -9.0122E+00  5.1380E-01 -2.5374E-01
             1.0871E+00
 GRADIENT:  -4.1551E+00  3.0689E+00  2.1542E-01  3.9015E+00 -2.6429E+00 -7.6997E-01  2.3438E-03  0.0000E+00 -6.7527E-01  2.7171E+00
            -7.7218E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1627.99960562426        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:      642
 NPARAMETR:  1.0475E+00  2.8970E-01  1.5032E-01  9.7010E-01  2.0328E-01  9.0285E-01  1.2032E-02  1.0000E-02  1.5181E+00  6.9340E-01
             2.6869E+00
 PARAMETER:  1.4639E-01 -1.1389E+00 -1.7950E+00  6.9645E-02 -1.4932E+00 -2.1968E-03 -4.3202E+00 -9.1186E+00  5.1749E-01 -2.6615E-01
             1.0884E+00
 GRADIENT:   2.4977E-01 -4.1217E-01 -6.8556E-01 -7.4362E-02  1.9378E+00 -1.0337E-02  7.6004E-04  0.0000E+00  1.3470E-01  4.4711E-02
            -7.9878E-02

0ITERATION NO.:   28    OBJECTIVE VALUE:  -1628.00003486414        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      734
 NPARAMETR:  1.0475E+00  2.8995E-01  1.5039E-01  9.7028E-01  2.0326E-01  9.0291E-01  1.0000E-02  1.0000E-02  1.5175E+00  6.9322E-01
             2.6873E+00
 PARAMETER:  1.4638E-01 -1.1380E+00 -1.7945E+00  6.9829E-02 -1.4933E+00 -2.1291E-03 -4.5552E+00 -9.1186E+00  5.1708E-01 -2.6641E-01
             1.0885E+00
 GRADIENT:   1.5827E-01  7.1982E-02  1.0770E-01  1.1294E-02  2.0494E-01  8.5775E-03  0.0000E+00  0.0000E+00  4.0155E-02  9.5854E-03
             6.2523E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      734
 NO. OF SIG. DIGITS IN FINAL EST.:  2.9
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.8644E-04 -4.0405E-05  2.5026E-04 -7.9188E-03  5.4098E-03
 SE:             2.9026E-02  9.6048E-05  2.1688E-04  2.6903E-02  2.5277E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8388E-01  6.7399E-01  2.4853E-01  7.6850E-01  8.3053E-01

 ETASHRINKSD(%)  2.7588E+00  9.9678E+01  9.9273E+01  9.8701E+00  1.5318E+01
 ETASHRINKVR(%)  5.4415E+00  9.9999E+01  9.9995E+01  1.8766E+01  2.8290E+01
 EBVSHRINKSD(%)  2.6643E+00  9.9639E+01  9.9330E+01  6.8585E+00  1.6419E+01
 EBVSHRINKVR(%)  5.2577E+00  9.9999E+01  9.9996E+01  1.3247E+01  3.0142E+01
 RELATIVEINF(%)  9.4607E+01  3.4375E-04  3.9621E-04  3.6570E+01  3.9080E+00
 EPSSHRINKSD(%)  2.7518E+01
 EPSSHRINKVR(%)  4.7464E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1628.0000348641418     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -709.06150165946906     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1628.000       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  2.90E-01  1.50E-01  9.70E-01  2.03E-01  9.03E-01  1.00E-02  1.00E-02  1.52E+00  6.93E-01  2.69E+00
 


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
 #CPUT: Total CPU Time in Seconds,       10.653
Stop Time:
Fri Oct  1 10:25:42 CDT 2021
Fri Oct  1 17:48:42 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat47.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1717.30423060021        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3021E+02  5.1018E+01  1.2786E+02 -1.6700E+01  1.5930E+02  6.6871E+01 -7.2474E+01 -3.7459E+01 -2.0239E+01 -9.4864E+01
            -1.2514E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2047.51545758277        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1051E+00  7.3590E-01  5.3691E-01  1.1986E+00  5.3312E-01  1.0673E+00  1.2909E+00  8.5990E-01  1.1239E+00  1.2096E+00
             1.9626E+00
 PARAMETER:  1.9993E-01 -2.0666E-01 -5.2193E-01  2.8111E-01 -5.2901E-01  1.6517E-01  3.5532E-01 -5.0934E-02  2.1683E-01  2.9030E-01
             7.7426E-01
 GRADIENT:   4.0443E+02  1.0086E+02  1.7394E+01  8.8846E+01 -2.0816E+01  4.6185E+01  1.3398E+01  2.4687E+01  3.4458E+01  5.0042E+01
             1.1592E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2059.97914616017        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:      204
 NPARAMETR:  1.1117E+00  4.7607E-01  3.9730E-01  1.3554E+00  4.0981E-01  1.1436E+00  1.3459E+00  6.9288E-01  1.1755E+00  9.5296E-01
             1.8888E+00
 PARAMETER:  2.0591E-01 -6.4218E-01 -8.2306E-01  4.0407E-01 -7.9207E-01  2.3422E-01  3.9703E-01 -2.6690E-01  2.6168E-01  5.1815E-02
             7.3596E-01
 GRADIENT:   1.9494E+02  1.1553E+01 -4.4145E+01  1.4461E+02  2.9942E+01  5.2325E+01  9.3932E+00  2.0270E+01  3.0860E+01  3.7602E+01
             9.5727E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2105.18932361471        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  1.0087E+00  4.7483E-01  4.0694E-01  1.2297E+00  4.1041E-01  9.4671E-01  1.3442E+00  2.9607E-01  1.0320E+00  9.4318E-01
             1.7544E+00
 PARAMETER:  1.0865E-01 -6.4480E-01 -7.9909E-01  3.0678E-01 -7.9059E-01  4.5241E-02  3.9576E-01 -1.1172E+00  1.3146E-01  4.1500E-02
             6.6214E-01
 GRADIENT:   5.0544E+01  3.9743E+00 -7.5370E+00  3.6337E+00  6.3173E+00  1.8863E+01  5.7998E+00  3.9610E+00  5.9177E+00  3.1036E+01
             2.9118E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2111.86456667842        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      556
 NPARAMETR:  9.8886E-01  4.1356E-01  3.4704E-01  1.2137E+00  3.5653E-01  9.0217E-01  1.3638E+00  8.6669E-02  1.0247E+00  7.7598E-01
             1.7024E+00
 PARAMETER:  8.8800E-02 -7.8296E-01 -9.5831E-01  2.9371E-01 -9.3133E-01 -2.9535E-03  4.1026E-01 -2.3457E+00  1.2444E-01 -1.5363E-01
             6.3203E-01
 GRADIENT:   3.2780E+00 -2.9763E-01  1.7078E-01 -2.2299E+00  6.5136E-01  1.3583E+00  6.2340E-01  2.3562E-01 -8.6479E-01  3.9159E-01
             8.0567E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2111.97628165212        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      715
 NPARAMETR:  9.8795E-01  4.0740E-01  3.3877E-01  1.2123E+00  3.4874E-01  8.9840E-01  1.3631E+00  2.8502E-02  1.0298E+00  7.6924E-01
             1.6989E+00
 PARAMETER:  8.7876E-02 -7.9795E-01 -9.8242E-01  2.9254E-01 -9.5344E-01 -7.1380E-03  4.0974E-01 -3.4578E+00  1.2939E-01 -1.6236E-01
             6.2996E-01
 GRADIENT:   7.7956E-01  2.8850E+00  2.8994E+00  4.7370E-01 -7.9253E+00 -4.0225E-01  3.2764E-01  2.4489E-02 -1.6013E-01 -4.4592E-01
            -9.2645E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2111.99832531968        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      891
 NPARAMETR:  9.8749E-01  4.0857E-01  3.4129E-01  1.2128E+00  3.5150E-01  8.9907E-01  1.3585E+00  1.0000E-02  1.0292E+00  7.7276E-01
             1.7003E+00
 PARAMETER:  8.7409E-02 -7.9509E-01 -9.7504E-01  2.9294E-01 -9.4554E-01 -6.3889E-03  4.0636E-01 -5.0845E+00  1.2878E-01 -1.5778E-01
             6.3079E-01
 GRADIENT:  -4.6304E-01 -7.7103E-02  3.4404E-03 -3.5769E-01 -1.1116E+00 -6.2665E-02 -2.7861E-02  0.0000E+00 -5.6796E-02 -2.6814E-02
            -1.2470E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2111.99832531968        NO. OF FUNC. EVALS.:  29
 CUMULATIVE NO. OF FUNC. EVALS.:      920
 NPARAMETR:  9.8848E-01  4.0953E-01  3.4142E-01  1.2122E+00  3.5125E-01  8.9970E-01  1.3605E+00  1.0000E-02  1.0300E+00  7.7313E-01
             1.7008E+00
 PARAMETER:  8.7409E-02 -7.9509E-01 -9.7504E-01  2.9294E-01 -9.4554E-01 -6.3889E-03  4.0636E-01 -5.0845E+00  1.2878E-01 -1.5778E-01
             6.3079E-01
 GRADIENT:  -8.0044E-01 -4.1432E-01 -1.6396E-01  2.7674E-01  5.5240E-01 -7.8408E-02 -5.0907E-02  0.0000E+00 -7.4695E-02 -3.0061E-02
            -1.0490E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      920
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.5262E-04  9.2888E-03 -2.1987E-04 -4.8429E-03  3.5648E-03
 SE:             2.9620E-02  2.0399E-02  2.2214E-04  2.8583E-02  2.4917E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7704E-01  6.4884E-01  3.2229E-01  8.6546E-01  8.8624E-01

 ETASHRINKSD(%)  7.7093E-01  3.1662E+01  9.9256E+01  4.2430E+00  1.6525E+01
 ETASHRINKVR(%)  1.5359E+00  5.3300E+01  9.9994E+01  8.3060E+00  3.0319E+01
 EBVSHRINKSD(%)  1.0752E+00  3.0271E+01  9.9181E+01  4.1234E+00  1.6651E+01
 EBVSHRINKVR(%)  2.1389E+00  5.1378E+01  9.9993E+01  8.0768E+00  3.0529E+01
 RELATIVEINF(%)  9.7834E+01  1.3984E+01  7.3959E-04  8.1267E+01  5.6267E+00
 EPSSHRINKSD(%)  2.9155E+01
 EPSSHRINKVR(%)  4.9809E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2111.9983253196801     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1009.2720854740730     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2111.998       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.87E-01  4.09E-01  3.41E-01  1.21E+00  3.52E-01  8.99E-01  1.36E+00  1.00E-02  1.03E+00  7.73E-01  1.70E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.996
Stop Time:
Fri Oct  1 17:48:58 CDT 2021

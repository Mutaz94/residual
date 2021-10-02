Fri Oct  1 13:29:37 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat29.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m29.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2036.99689429767        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7765E+02 -1.7645E+01 -2.8328E+01  3.4006E+01  6.4826E+01  1.7338E+01 -2.7213E+01  5.2545E+00 -1.6302E+01 -1.0405E+01
            -6.2808E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2046.76144992403        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.8317E-01  1.0403E+00  1.0276E+00  1.0193E+00  1.0087E+00  1.0881E+00  1.1288E+00  9.7673E-01  1.0812E+00  1.0160E+00
             1.0696E+00
 PARAMETER:  8.3031E-02  1.3951E-01  1.2727E-01  1.1916E-01  1.0869E-01  1.8446E-01  2.2112E-01  7.6459E-02  1.7804E-01  1.1583E-01
             1.6731E-01
 GRADIENT:  -1.4961E+00 -1.3661E+01 -1.9390E+01  1.4489E+01  2.8398E+01  3.2181E+00 -1.5554E+01  4.6578E+00  2.1303E+00 -4.8427E+00
            -5.4478E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2048.87950916372        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.8589E-01  1.0856E+00  1.0219E+00  9.8288E-01  1.0323E+00  1.1028E+00  1.4307E+00  8.3318E-01  9.7695E-01  1.1212E+00
             1.0528E+00
 PARAMETER:  8.5792E-02  1.8210E-01  1.2167E-01  8.2729E-02  1.3177E-01  1.9785E-01  4.5816E-01 -8.2508E-02  7.6676E-02  2.1440E-01
             1.5148E-01
 GRADIENT:   4.2444E+00 -2.2133E+00 -6.1675E+00 -2.0132E-01  6.9150E+00  8.0880E+00  5.1992E+00  2.6940E+00 -7.9494E-01  6.2870E+00
            -1.6206E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2050.07994633713        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.8556E-01  1.1590E+00  8.3932E-01  9.2890E-01  9.6113E-01  1.0796E+00  1.3223E+00  5.0714E-01  1.0317E+00  9.9138E-01
             1.0780E+00
 PARAMETER:  8.5451E-02  2.4752E-01 -7.5167E-02  2.6249E-02  6.0350E-02  1.7660E-01  3.7935E-01 -5.7898E-01  1.3124E-01  9.1342E-02
             1.7511E-01
 GRADIENT:   2.8033E-01  7.9722E-01  1.0200E+00  1.7143E+00 -2.5070E+00 -6.2892E-01  7.0183E-01  2.6488E-01  2.1250E+00  6.0037E-01
             2.4487E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2050.27775922086        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.8661E-01  1.3108E+00  7.1410E-01  8.2596E-01  9.7752E-01  1.0831E+00  1.2249E+00  2.8954E-01  1.0716E+00  9.7165E-01
             1.0739E+00
 PARAMETER:  8.6515E-02  3.7067E-01 -2.3673E-01 -9.1215E-02  7.7264E-02  1.7983E-01  3.0287E-01 -1.1395E+00  1.6912E-01  7.1244E-02
             1.7133E-01
 GRADIENT:  -1.5355E-01 -2.2394E+00 -1.0268E+00 -1.0697E+00  1.8350E+00  1.6909E-02 -3.5636E-02  1.5135E-01  1.2915E-01  7.0281E-02
            -6.2556E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2050.31398281339        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      844
 NPARAMETR:  9.8614E-01  1.3107E+00  7.1471E-01  8.2766E-01  9.7582E-01  1.0822E+00  1.2258E+00  1.6520E-01  1.0712E+00  9.7396E-01
             1.0742E+00
 PARAMETER:  8.6042E-02  3.7058E-01 -2.3588E-01 -8.9151E-02  7.5527E-02  1.7902E-01  3.0360E-01 -1.7006E+00  1.6874E-01  7.3613E-02
             1.7158E-01
 GRADIENT:  -1.0199E+00  8.6666E-01  1.4206E+00 -6.2568E-01 -8.8733E-01 -3.0592E-01 -2.8859E-01  1.8140E-02 -2.3369E-01 -5.4050E-01
            -4.4068E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2050.33390683399        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1020
 NPARAMETR:  9.8703E-01  1.3087E+00  7.0157E-01  8.2695E-01  9.6797E-01  1.0835E+00  1.2283E+00  5.0925E-02  1.0698E+00  9.6712E-01
             1.0742E+00
 PARAMETER:  8.6950E-02  3.6906E-01 -2.5444E-01 -9.0012E-02  6.7442E-02  1.8021E-01  3.0565E-01 -2.8774E+00  1.6751E-01  6.6567E-02
             1.7161E-01
 GRADIENT:   5.2179E-01 -7.1241E-01 -4.3711E-02 -5.3707E-01 -1.2008E-01  1.3953E-01 -1.3085E-02  2.7259E-03 -4.7444E-02 -3.7632E-02
            -9.1285E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2050.33574892427        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1203             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8754E-01  1.3083E+00  7.0186E-01  8.2752E-01  9.6810E-01  1.0844E+00  1.2293E+00  1.0000E-02  1.0702E+00  9.6781E-01
             1.0743E+00
 PARAMETER:  8.7465E-02  3.6874E-01 -2.5402E-01 -8.9323E-02  6.7580E-02  1.8105E-01  3.0641E-01 -5.0445E+00  1.6781E-01  6.7277E-02
             1.7165E-01
 GRADIENT:   3.8182E+02  2.0991E+02  3.2985E+00  5.0857E+01  7.6562E+00  8.3025E+01  2.3439E+01  0.0000E+00  1.0226E+01  6.9990E-01
             1.7378E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2050.33574892427        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1262
 NPARAMETR:  9.8754E-01  1.3083E+00  7.0186E-01  8.2752E-01  9.6810E-01  1.0844E+00  1.2293E+00  1.0000E-02  1.0702E+00  9.6781E-01
             1.0743E+00
 PARAMETER:  8.7465E-02  3.6874E-01 -2.5402E-01 -8.9323E-02  6.7580E-02  1.8105E-01  3.0641E-01 -5.0445E+00  1.6781E-01  6.7277E-02
             1.7165E-01
 GRADIENT:   1.5015E+00 -5.7932E-01 -2.4640E-01 -3.8537E-02  2.4615E-01  4.6960E-01  9.1245E-02  0.0000E+00  7.0138E-02 -3.4299E-03
             2.1358E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1262
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.9048E-04 -9.6032E-03 -3.6951E-04  7.6416E-03 -2.0353E-02
 SE:             2.9837E-02  2.4113E-02  1.4334E-04  2.3285E-02  2.2312E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8956E-01  6.9044E-01  9.9421E-03  7.4278E-01  3.6166E-01

 ETASHRINKSD(%)  4.3701E-02  1.9219E+01  9.9520E+01  2.1993E+01  2.5252E+01
 ETASHRINKVR(%)  8.7382E-02  3.4745E+01  9.9998E+01  3.9149E+01  4.4128E+01
 EBVSHRINKSD(%)  3.5965E-01  1.8618E+01  9.9585E+01  2.3404E+01  2.3932E+01
 EBVSHRINKVR(%)  7.1800E-01  3.3770E+01  9.9998E+01  4.1330E+01  4.2137E+01
 RELATIVEINF(%)  9.9094E+01  6.0043E+00  2.3226E-04  4.8764E+00  9.6502E+00
 EPSSHRINKSD(%)  3.3351E+01
 EPSSHRINKVR(%)  5.5579E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2050.3357489242735     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1131.3972157196008     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2050.336       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.88E-01  1.31E+00  7.02E-01  8.28E-01  9.68E-01  1.08E+00  1.23E+00  1.00E-02  1.07E+00  9.68E-01  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.700
Stop Time:
Fri Oct  1 13:29:58 CDT 2021

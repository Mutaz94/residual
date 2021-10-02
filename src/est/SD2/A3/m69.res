Fri Oct  1 10:42:19 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat69.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   1347.59796701275        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1059E+02  1.4993E+02  3.0415E+02  7.1437E+01  2.6842E+02  3.1772E+01 -7.0770E+01 -3.9880E+02 -8.5343E+01 -2.2928E+02
            -6.0721E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1401.45357018562        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.1063E+00  1.0267E+00  9.5834E-01  1.1035E+00  1.0426E+00  8.5750E-01  8.8809E-01  9.6368E-01  7.9478E-01  8.9363E-01
             5.4239E+00
 PARAMETER:  2.0106E-01  1.2634E-01  5.7450E-02  1.9849E-01  1.4176E-01 -5.3729E-02 -1.8682E-02  6.3002E-02 -1.2969E-01 -1.2459E-02
             1.7908E+00
 GRADIENT:   1.0016E+02  5.0760E+00 -2.2678E+01  3.5850E+01  7.6088E+00 -2.3752E+01  6.6264E+00  5.9913E+00  8.5734E+00  1.4913E+01
             2.3457E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1427.29945166253        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0562E+00  8.1110E-01  3.7183E-01  1.0956E+00  4.8000E-01  9.2120E-01  5.9188E-01  8.8546E-02  9.7390E-01  3.3584E-01
             4.8202E+00
 PARAMETER:  1.5472E-01 -1.0937E-01 -8.8931E-01  1.9126E-01 -6.3397E-01  1.7922E-02 -4.2446E-01 -2.3242E+00  7.3553E-02 -9.9112E-01
             1.6728E+00
 GRADIENT:  -1.3828E+01  6.6328E+01  3.8651E+01  4.8168E+01 -8.1623E+01 -1.1347E+01 -1.1749E+00  7.2236E-02  6.2939E+00  1.9366E+00
             1.5881E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1441.47154879187        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0197E+00  6.6296E-01  2.1441E-01  1.0548E+00  3.4152E-01  9.7227E-01  7.1420E-01  1.0000E-02  1.0448E+00  2.9931E-01
             4.0252E+00
 PARAMETER:  1.1955E-01 -3.1104E-01 -1.4399E+00  1.5336E-01 -9.7434E-01  7.1876E-02 -2.3659E-01 -4.8491E+00  1.4386E-01 -1.1063E+00
             1.4926E+00
 GRADIENT:  -5.4082E+01  4.7542E+01 -4.4060E-01  5.5905E+01 -1.1194E+01 -7.3158E+00 -3.8391E+00  0.0000E+00 -1.2647E+01 -3.3280E+00
             2.3959E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1445.55615879837        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      405
 NPARAMETR:  1.0549E+00  6.5121E-01  2.5327E-01  1.0645E+00  3.6854E-01  9.7815E-01  7.4024E-01  1.0000E-02  1.0452E+00  3.4755E-01
             3.9183E+00
 PARAMETER:  1.5347E-01 -3.2892E-01 -1.2733E+00  1.6251E-01 -8.9821E-01  7.7909E-02 -2.0078E-01 -5.0341E+00  1.4419E-01 -9.5685E-01
             1.4657E+00
 GRADIENT:   1.7905E+00  1.4386E+01  6.2232E-01  1.4421E+01 -4.0195E+00 -1.4511E+00 -1.9198E+00  0.0000E+00 -3.1397E+00 -3.0910E+00
            -2.1535E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1450.32286032740        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      586
 NPARAMETR:  1.0440E+00  4.5955E-01  1.7568E-01  1.0162E+00  2.6361E-01  1.0202E+00  2.9391E-01  1.0000E-02  1.2062E+00  5.7553E-01
             3.7734E+00
 PARAMETER:  1.4302E-01 -6.7751E-01 -1.6391E+00  1.1608E-01 -1.2333E+00  1.2002E-01 -1.1245E+00 -6.5503E+00  2.8748E-01 -4.5246E-01
             1.4280E+00
 GRADIENT:  -1.7906E+01 -2.1563E+00 -3.0726E+00 -9.4106E+00  9.7135E+00  4.2345E+00  3.1352E-01  0.0000E+00  1.8441E-01 -6.1748E+00
            -1.3492E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1450.97663732594        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      762
 NPARAMETR:  1.0547E+00  4.3477E-01  1.6434E-01  1.0077E+00  2.4891E-01  1.0098E+00  2.2770E-01  1.0000E-02  1.2368E+00  6.4870E-01
             3.7415E+00
 PARAMETER:  1.5328E-01 -7.3294E-01 -1.7058E+00  1.0767E-01 -1.2906E+00  1.0971E-01 -1.3797E+00 -6.8026E+00  3.1255E-01 -3.3278E-01
             1.4195E+00
 GRADIENT:   1.2100E+00 -2.0565E+00 -9.2908E-01 -2.2781E+00  2.7420E+00 -9.2143E-02  4.2390E-01  0.0000E+00  4.1760E-01  8.9676E-01
             3.1891E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1451.18336867743        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      939
 NPARAMETR:  1.0542E+00  4.3994E-01  1.6435E-01  1.0098E+00  2.5006E-01  1.0106E+00  3.7564E-02  1.0000E-02  1.2366E+00  6.4869E-01
             3.7326E+00
 PARAMETER:  1.5280E-01 -7.2112E-01 -1.7057E+00  1.0973E-01 -1.2861E+00  1.1053E-01 -3.1817E+00 -4.9745E+00  3.1240E-01 -3.3280E-01
             1.4171E+00
 GRADIENT:   4.1032E-01 -2.3657E-03 -1.2222E+00  7.7098E-01  1.3002E+00 -5.9008E-03  1.0684E-02  0.0000E+00 -2.8052E-01 -1.8670E-01
             2.0068E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1452.24394153463        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1118
 NPARAMETR:  1.0536E+00  4.4184E-01  1.6540E-01  1.0114E+00  2.5124E-01  1.0113E+00  1.0000E-02  6.3467E-01  1.2336E+00  6.4569E-01
             3.7339E+00
 PARAMETER:  1.5217E-01 -7.1680E-01 -1.6994E+00  1.1138E-01 -1.2813E+00  1.1127E-01 -7.7817E+00 -3.5465E-01  3.0996E-01 -3.3744E-01
             1.4175E+00
 GRADIENT:  -3.5431E+00 -2.5723E+00  2.0372E+00 -9.8718E-01  6.5301E+00  5.5892E-01  0.0000E+00 -7.1408E-01  2.8161E-01  7.3867E+00
             1.7205E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1454.30402661020        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1297
 NPARAMETR:  1.0522E+00  4.0191E-01  1.4118E-01  9.7925E-01  2.2636E-01  1.0136E+00  1.0000E-02  1.0957E+00  1.3619E+00  5.3587E-01
             3.5536E+00
 PARAMETER:  1.5087E-01 -8.1152E-01 -1.8577E+00  7.9029E-02 -1.3856E+00  1.1349E-01 -9.2424E+00  1.9141E-01  4.0889E-01 -5.2387E-01
             1.3680E+00
 GRADIENT:   3.8629E-01 -4.8182E-01  5.2047E-01 -1.9801E+00  2.9824E-01 -2.0587E-01  0.0000E+00  3.0710E-01  7.0700E-01  7.4232E-01
            -5.3365E-01

0ITERATION NO.:   49    OBJECTIVE VALUE:  -1454.31585307471        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  1.0522E+00  4.0517E-01  1.4276E-01  9.8429E-01  2.2826E-01  1.0141E+00  1.0000E-02  1.0933E+00  1.3508E+00  5.2614E-01
             3.5620E+00
 PARAMETER:  1.5090E-01 -8.0344E-01 -1.8466E+00  8.4161E-02 -1.3773E+00  1.1398E-01 -9.1342E+00  1.8922E-01  4.0071E-01 -5.4220E-01
             1.3703E+00
 GRADIENT:  -2.7067E-02  3.7928E-03 -3.2254E-02  4.9455E-03  3.9352E-02 -2.1730E-03  0.0000E+00 -8.2064E-03  6.3405E-03 -9.9683E-03
             3.5425E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1424
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6135E-03 -2.0218E-04  1.7859E-02 -1.0259E-02  1.6719E-02
 SE:             2.8755E-02  1.3686E-04  1.6951E-02  2.5618E-02  1.7399E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5525E-01  1.3961E-01  2.9208E-01  6.8880E-01  3.3658E-01

 ETASHRINKSD(%)  3.6662E+00  9.9541E+01  4.3212E+01  1.4177E+01  4.1712E+01
 ETASHRINKVR(%)  7.1980E+00  9.9998E+01  6.7751E+01  2.6344E+01  6.6025E+01
 EBVSHRINKSD(%)  3.4769E+00  9.9504E+01  4.2390E+01  1.2242E+01  4.2242E+01
 EBVSHRINKVR(%)  6.8330E+00  9.9998E+01  6.6811E+01  2.2986E+01  6.6640E+01
 RELATIVEINF(%)  9.2873E+01  3.5089E-04  4.5479E+00  4.3514E+01  1.7791E+00
 EPSSHRINKSD(%)  2.4661E+01
 EPSSHRINKVR(%)  4.3240E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1454.3158530747119     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -535.37731987003917     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.32
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1454.316       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  4.05E-01  1.43E-01  9.84E-01  2.28E-01  1.01E+00  1.00E-02  1.09E+00  1.35E+00  5.26E-01  3.56E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.367
Stop Time:
Fri Oct  1 10:42:45 CDT 2021

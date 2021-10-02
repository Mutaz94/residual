Sat Oct  2 02:08:35 CDT 2021
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
$DATA ../../../../data/SD4/SL1/dat29.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 NO. OF DATA RECS IN DATA SET:      500
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

 TOT. NO. OF OBS RECS:      400
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1570.98166230078        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8010E+02 -1.5306E+01 -1.0430E+01  1.4431E+01  3.2956E+01  1.1521E+01 -2.8174E+01 -5.5172E-01 -2.3598E+01 -1.1763E+00
            -8.4641E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1586.90080200424        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7718E-01  1.0868E+00  1.0466E+00  9.9604E-01  1.0442E+00  1.0997E+00  1.2208E+00  9.8853E-01  1.1297E+00  9.6358E-01
             1.1848E+00
 PARAMETER:  7.6912E-02  1.8324E-01  1.4559E-01  9.6036E-02  1.4323E-01  1.9501E-01  2.9954E-01  8.8468E-02  2.2191E-01  6.2899E-02
             2.6961E-01
 GRADIENT:  -6.9446E+00 -3.1125E+00 -1.6459E+00  1.0734E+01  1.2095E+01  3.8394E+00 -5.5003E+00 -1.8993E-01  5.9502E+00 -2.3925E+00
            -1.9163E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1587.50541417532        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  9.8529E-01  1.1149E+00  9.3734E-01  9.7013E-01  9.9039E-01  1.0869E+00  1.3519E+00  9.5182E-01  1.0976E+00  8.9135E-01
             1.1815E+00
 PARAMETER:  8.5179E-02  2.0872E-01  3.5291E-02  6.9670E-02  9.0342E-02  1.8334E-01  4.0151E-01  5.0623E-02  1.9308E-01 -1.5013E-02
             2.6676E-01
 GRADIENT:   6.9955E+00  5.5443E+00  2.5077E+00  3.6122E+00 -4.4902E+00 -8.6679E-01  5.9706E+00  1.4333E+00  5.4207E+00  7.6562E-01
            -2.9958E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1588.36622999196        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  9.8199E-01  1.2500E+00  6.8231E-01  8.6339E-01  9.2788E-01  1.0912E+00  1.2139E+00  4.5956E-01  1.0874E+00  8.2744E-01
             1.1789E+00
 PARAMETER:  8.1821E-02  3.2318E-01 -2.8228E-01 -4.6884E-02  2.5152E-02  1.8725E-01  2.9383E-01 -6.7749E-01  1.8381E-01 -8.9418E-02
             2.6461E-01
 GRADIENT:  -3.2528E+00 -5.7443E-01 -2.3823E-01  1.4500E+00 -3.2348E+00 -1.2268E-02 -2.5607E+00  3.4173E-01 -2.9237E+00  1.5196E+00
            -5.8317E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1588.65591099355        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      711             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8488E-01  1.4495E+00  5.8660E-01  7.3139E-01  9.8240E-01  1.0927E+00  1.0985E+00  1.0326E-01  1.2175E+00  8.3292E-01
             1.1816E+00
 PARAMETER:  8.4762E-02  4.7122E-01 -4.3342E-01 -2.1281E-01  8.2246E-02  1.8866E-01  1.9391E-01 -2.1705E+00  2.9678E-01 -8.2812E-02
             2.6683E-01
 GRADIENT:   3.1287E+02  2.5738E+02  8.5288E+00  5.6752E+01  1.3568E-01  7.1436E+01  1.0405E+01  3.1872E-02  1.0411E+01 -5.3181E-01
             1.0680E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1588.69252764677        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  9.8380E-01  1.4499E+00  5.8182E-01  7.3324E-01  9.8345E-01  1.0919E+00  1.1016E+00  5.9942E-02  1.2243E+00  8.3959E-01
             1.1831E+00
 PARAMETER:  8.3664E-02  4.7148E-01 -4.4159E-01 -2.1028E-01  8.3308E-02  1.8788E-01  1.9680E-01 -2.7144E+00  3.0235E-01 -7.4845E-02
             2.6812E-01
 GRADIENT:  -7.7641E-01 -6.8802E-01 -4.6008E-01  3.3850E-01  8.0375E-01  1.0142E-01  1.3606E-01  6.8553E-03  1.1829E-01  1.6179E-01
             2.2335E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1588.69663429736        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1067
 NPARAMETR:  9.8499E-01  1.4502E+00  5.7926E-01  7.3178E-01  9.8229E-01  1.0928E+00  1.1005E+00  1.0000E-02  1.2248E+00  8.3644E-01
             1.1826E+00
 PARAMETER:  8.4873E-02  4.7171E-01 -4.4601E-01 -2.1228E-01  8.2133E-02  1.8870E-01  1.9572E-01 -4.8470E+00  3.0282E-01 -7.8602E-02
             2.6772E-01
 GRADIENT:   1.4643E+00 -1.7070E+00 -3.4228E-01 -5.0889E-01  8.0850E-01  4.2354E-01 -2.1157E-02  0.0000E+00  1.0575E-01  3.1528E-02
             3.9638E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1588.69663429736        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1095
 NPARAMETR:  9.8478E-01  1.4505E+00  5.8022E-01  7.3226E-01  9.8131E-01  1.0927E+00  1.1009E+00  1.0000E-02  1.2241E+00  8.3601E-01
             1.1824E+00
 PARAMETER:  8.4873E-02  4.7171E-01 -4.4601E-01 -2.1228E-01  8.2133E-02  1.8870E-01  1.9572E-01 -4.8470E+00  3.0282E-01 -7.8602E-02
             2.6772E-01
 GRADIENT:   2.3044E-01 -1.5962E-01 -3.3370E-01 -3.5342E-01  4.4523E-01  5.6095E-03 -5.2397E-02  0.0000E+00  5.6835E-02  3.1022E-02
             4.2601E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1095
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.1088E-05 -1.4453E-02 -3.3464E-04  1.1882E-02 -2.6736E-02
 SE:             2.9771E-02  2.4731E-02  1.2711E-04  2.3147E-02  2.0265E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9783E-01  5.5895E-01  8.4709E-03  6.0772E-01  1.8706E-01

 ETASHRINKSD(%)  2.6419E-01  1.7147E+01  9.9574E+01  2.2454E+01  3.2110E+01
 ETASHRINKVR(%)  5.2767E-01  3.1354E+01  9.9998E+01  3.9866E+01  5.3909E+01
 EBVSHRINKSD(%)  5.4369E-01  1.6815E+01  9.9622E+01  2.3268E+01  3.1797E+01
 EBVSHRINKVR(%)  1.0844E+00  3.0802E+01  9.9999E+01  4.1122E+01  5.3484E+01
 RELATIVEINF(%)  9.8853E+01  5.6467E+00  1.4260E-04  4.5685E+00  6.8843E+00
 EPSSHRINKSD(%)  4.3134E+01
 EPSSHRINKVR(%)  6.7663E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1588.6966342973624     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -853.54580773362420     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.33
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1588.697       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.85E-01  1.45E+00  5.79E-01  7.32E-01  9.82E-01  1.09E+00  1.10E+00  1.00E-02  1.22E+00  8.36E-01  1.18E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.361
Stop Time:
Sat Oct  2 02:08:50 CDT 2021

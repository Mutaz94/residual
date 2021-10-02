Fri Oct  1 06:34:13 CDT 2021
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
$DATA ../../../../data/SD1/D/dat39.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m39.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   28710.3202367838        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.5131E+02  4.6750E+02  4.0739E+01  2.5642E+02  2.8302E+01 -1.6887E+03 -8.9305E+02 -6.8908E+01 -1.4690E+03 -4.7154E+02
            -5.9855E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -867.846446737615        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1412E+00  1.5487E+00  8.8986E-01  1.9750E+00  9.8700E-01  3.1670E+00  2.6153E+00  9.8503E-01  2.0321E+00  1.2852E+00
             1.3623E+01
 PARAMETER:  2.3204E-01  5.3739E-01 -1.6692E-02  7.8058E-01  8.6919E-02  1.2528E+00  1.0614E+00  8.4920E-02  8.0908E-01  3.5095E-01
             2.7117E+00
 GRADIENT:  -4.2502E+01  6.4851E+00 -2.8780E+01  1.3849E+02  4.5119E+00  1.0191E+02 -6.2327E+01  4.5268E+00  1.3859E+01  2.8388E+01
             5.4706E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -945.771867840235        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0291E+00  1.2629E+00  2.7181E+01  2.3400E+00  2.7158E+00  4.0240E+00  6.5292E+00  5.1595E-01  2.0548E+00  2.0696E+00
             1.2618E+01
 PARAMETER:  1.2872E-01  3.3337E-01  3.4025E+00  9.5016E-01  1.0991E+00  1.4923E+00  1.9763E+00 -5.6175E-01  8.2016E-01  8.2737E-01
             2.6351E+00
 GRADIENT:  -3.1991E+01  2.8802E+01 -2.3966E+00  8.6678E+01 -5.5710E-01  1.5816E+02  4.5207E+01  3.0409E-02  2.4882E+01  5.5911E+01
             5.2010E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1147.87163676909        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0785E+00  1.2262E+00  8.0654E+00  7.9543E-01  2.8580E+00  1.8760E+00  3.6638E+00  4.3214E-01  1.1532E+00  2.7503E-01
             8.9986E+00
 PARAMETER:  1.7560E-01  3.0396E-01  2.1876E+00 -1.2887E-01  1.1501E+00  7.2916E-01  1.3985E+00 -7.3902E-01  2.4251E-01 -1.1909E+00
             2.2971E+00
 GRADIENT:  -2.6421E+01 -6.3005E+01 -5.7966E+00 -6.3612E+01  7.3633E+01 -2.4786E+01  2.9096E+01  2.4520E-02  9.4322E+00  1.4002E+00
             2.4163E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1177.73937989798        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  1.1330E+00  1.7414E+00  2.6494E+00  7.2441E-01  2.1257E+00  2.0196E+00  3.0166E+00  4.5843E-01  1.0451E+00  2.7187E-01
             8.0138E+00
 PARAMETER:  2.2489E-01  6.5468E-01  1.0743E+00 -2.2240E-01  8.5411E-01  8.0291E-01  1.2041E+00 -6.7996E-01  1.4413E-01 -1.2024E+00
             2.1812E+00
 GRADIENT:   1.6120E+01 -3.7068E+00 -2.8939E+00 -3.3182E+00  1.3683E+01 -4.0465E+00 -3.7931E+00  1.1521E-01  6.2530E+00  1.6538E+00
             4.3729E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1181.61802012535        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0927E+00  1.6446E+00  2.6288E+00  7.8063E-01  2.0141E+00  2.0298E+00  3.2196E+00  3.4545E-01  5.2816E-01  2.1464E-01
             8.0187E+00
 PARAMETER:  1.8862E-01  5.9752E-01  1.0665E+00 -1.4766E-01  8.0015E-01  8.0792E-01  1.2693E+00 -9.6290E-01 -5.3835E-01 -1.4388E+00
             2.1818E+00
 GRADIENT:  -4.0934E+00  1.6006E+00  8.8312E-01  1.4083E+00 -1.7812E+00 -1.4224E+00  8.3266E-01  7.8724E-02  5.1443E-01  9.8586E-01
            -3.3346E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1181.62336017025        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      440
 NPARAMETR:  1.0922E+00  1.6644E+00  2.3322E+00  7.5906E-01  1.9839E+00  2.0317E+00  3.1897E+00  2.6222E-01  4.3212E-01  1.8291E-01
             8.0226E+00
 PARAMETER:  1.8819E-01  6.0948E-01  9.4681E-01 -1.7568E-01  7.8509E-01  8.0888E-01  1.2599E+00 -1.2386E+00 -7.3905E-01 -1.5988E+00
             2.1823E+00
 GRADIENT:  -4.3708E+00  7.3196E-01  1.2445E-01  1.6632E+00 -5.3313E-01 -1.0304E+00  1.0318E+00  4.6135E-02  4.2673E-01  7.4292E-01
            -1.9740E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1181.64802990511        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      510
 NPARAMETR:  1.0970E+00  1.7010E+00  2.0478E+00  7.2474E-01  1.9651E+00  2.0357E+00  3.1374E+00  1.7493E-01  2.8534E-01  1.3469E-01
             8.0242E+00
 PARAMETER:  1.9256E-01  6.3124E-01  8.1677E-01 -2.2194E-01  7.7552E-01  8.1083E-01  1.2434E+00 -1.6434E+00 -1.1541E+00 -1.9048E+00
             2.1825E+00
 GRADIENT:  -1.7462E+00 -4.4420E-01 -5.6837E-01  3.4457E-01  6.7555E-01 -1.9989E-01  1.1169E+00  1.9821E-02  3.2224E-01  4.2058E-01
            -5.3273E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1181.78971516274        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      583
 NPARAMETR:  1.1059E+00  1.7379E+00  1.9254E+00  6.9549E-01  1.9751E+00  2.0398E+00  3.0868E+00  6.6541E-02  8.2176E-02  5.7011E-02
             8.0248E+00
 PARAMETER:  2.0068E-01  6.5269E-01  7.5511E-01 -2.6313E-01  7.8062E-01  8.1286E-01  1.2271E+00 -2.6099E+00 -2.3989E+00 -2.7645E+00
             2.1825E+00
 GRADIENT:   3.0472E+00 -1.1281E+00 -5.6562E-01 -1.6610E+00  1.4427E+00  6.4790E-01  2.1715E-01  2.8355E-03  4.5752E-02  7.7852E-02
             4.6109E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1186.62650791922        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      742
 NPARAMETR:  1.1445E+00  1.7758E+00  2.8054E+00  7.7528E-01  2.0985E+00  2.1791E+00  3.6271E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.2233E+00
 PARAMETER:  2.3501E-01  6.7423E-01  1.1315E+00 -1.5453E-01  8.4122E-01  8.7891E-01  1.3884E+00 -4.9368E+00 -6.0523E+00 -5.0891E+00
             2.2070E+00
 GRADIENT:   1.4352E-01  4.8377E-01 -1.8666E-01  1.3090E+00  4.0230E-01  8.9633E-01  1.2803E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -1.8032E+00

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1186.62671310886        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      799
 NPARAMETR:  1.1426E+00  1.7799E+00  2.7617E+00  7.6993E-01  2.0952E+00  2.1748E+00  3.6029E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.2266E+00
 PARAMETER:  2.3331E-01  6.7658E-01  1.1158E+00 -1.6146E-01  8.3964E-01  8.7693E-01  1.3817E+00 -4.9139E+00 -5.9919E+00 -5.0541E+00
             2.2074E+00
 GRADIENT:  -6.3989E-01 -1.3407E-01 -2.1097E-01  1.7080E-01  3.0502E-01  2.5372E-01  6.1519E-01  0.0000E+00  0.0000E+00  0.0000E+00
             1.1476E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      799
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1378E-02  2.7384E-03 -1.6318E-05 -6.3592E-04 -1.2719E-05
 SE:             2.8975E-02  2.8141E-02  3.5758E-05  1.6666E-04  1.3073E-04
 N:                     100         100         100         100         100

 P VAL.:         6.9455E-01  9.2248E-01  6.4815E-01  1.3586E-04  9.2250E-01

 ETASHRINKSD(%)  2.9296E+00  5.7236E+00  9.9880E+01  9.9442E+01  9.9562E+01
 ETASHRINKVR(%)  5.7734E+00  1.1120E+01  1.0000E+02  9.9997E+01  9.9998E+01
 EBVSHRINKSD(%)  3.1128E+00  3.7696E+00  9.9871E+01  9.9623E+01  9.9474E+01
 EBVSHRINKVR(%)  6.1288E+00  7.3972E+00  1.0000E+02  9.9999E+01  9.9997E+01
 RELATIVEINF(%)  9.3697E+01  4.7692E+01  3.4849E-05  6.0961E-04  6.1419E-04
 EPSSHRINKSD(%)  6.6856E+00
 EPSSHRINKVR(%)  1.2924E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1186.6267131088550     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       467.46264665955573     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.21
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1186.627       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.14E+00  1.78E+00  2.76E+00  7.70E-01  2.10E+00  2.17E+00  3.60E+00  1.00E-02  1.00E-02  1.00E-02  8.23E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.281
Stop Time:
Fri Oct  1 06:34:32 CDT 2021

#!/bin/bash

cat passwords_A.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_A_conv.txt &
cat passwords_B.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_B_conv.txt &
cat passwords_C.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_C_conv.txt &
cat passwords_D.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_D_conv.txt &
cat passwords_E.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_E_conv.txt &
cat passwords_F.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_F_conv.txt &
cat passwords_G.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_G_conv.txt &
cat passwords_H.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_H_conv.txt &
cat passwords_I.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_I_conv.txt &
cat passwords_J.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_J_conv.txt &
cat passwords_K.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_K_conv.txt &
cat passwords_L.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_L_conv.txt &
cat passwords_M.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_M_conv.txt &
cat passwords_N.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_N_conv.txt &
cat passwords_O.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_O_conv.txt &
cat passwords_P.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_P_conv.txt &
cat passwords_Q.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_Q_conv.txt &
cat passwords_R.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_R_conv.txt &
cat passwords_S.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_S_conv.txt &
cat passwords_T.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_T_conv.txt &
cat passwords_U.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_U_conv.txt &
cat passwords_V.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_V_conv.txt &
cat passwords_W.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_W_conv.txt &
cat passwords_X.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_X_conv.txt &
cat passwords_Y.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_Y_conv.txt &
cat passwords_Z.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_Z_conv.txt &
cat passwords_1.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_1_conv.txt &
cat passwords_2.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_2_conv.txt &
cat passwords_3.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_3_conv.txt &
cat passwords_4.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_4_conv.txt &
cat passwords_5.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_5_conv.txt &
cat passwords_6.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_6_conv.txt &
cat passwords_7.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_7_conv.txt &
cat passwords_8.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_8_conv.txt &
cat passwords_9.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_9_conv.txt &
cat passwords_0.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_0_conv.txt &
cat passwords_-.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_-_conv.txt &
cat passwords_..txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_._conv.txt &
cat passwords_!.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_!_conv.txt &
cat passwords_nmc.txt | xargs -I {} sh -c "echo {} | perl -pe 's/\n/    /g' ; echo {} | ./conv.sh" > passwords_nmc_conv.txt &

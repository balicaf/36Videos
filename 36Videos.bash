ffmpeg \
 -i "Video copy.mp4"    \
 -i "Video.mp4"     \
 -i "Video01 copy.mp4" \
 -i "Video01.mp4"   \
 -i "Video02 copy.mp4" \
 -i "Video02.mp4"   \
 -i "Video03 copy.mp4" \
 -i "Video03.mp4"   \
 -i "Video04 copy.mp4" \
 -i "Video04.mp4"   \
 -i "Video05 copy.mp4" \
 -i "Video05.mp4"   \
 -i "Video06 copy.mp4"  \
 -i "Video06.mp4"  \
 -i "Video07 copy.mp4"  \
 -i "Video07.mp4"  \
 -i "Video08 copy.mp4" \
 -i "Video08.mp4" \
 -i "Video09 copy.mp4" \
 -i "Video10 copy.mp4" \
 -i "Video11 copy.mp4" \
 -i "Video12 copy.mp4" \
 -i "Video13.mp4" \
 -i "Video14.mp4" \
 -i "Video15.mp4" \
 -i "Video15_001.mp4" \
 -i "Video16.mp4" \
 -i "Video17.mp4" \
 -i "Video18.mp4" \
 -i "Video19.mp4" \
 -i "Video20.mp4" \
 -i "Video21.mp4" \
 -i "Video22.mp4" \
 -i "Video23.mp4" \
 -i "Video24.mp4" \
 -i "Video25.mp4" \
 -filter_complex "[0:v][1:v]hstack[v1];\
 [2:v][3:v]hstack[v2];\
 [4:v][5:v]hstack[v3];\
 [6:v][7:v]hstack[v4];\
 [8:v][9:v]hstack[v5];\
 [10:v][11:v]hstack[v6];\
 [12:v][13:v]hstack[v7];\
 [14:v][15:v]hstack[v0];\
 [16:v][17:v]hstack[v9];\
 [18:v][19:v]hstack[v10];\
 [20:v][21:v]hstack[v11];\
 [22:v][23:v]hstack[v12];\
 [24:v][25:v]hstack[v13];\
 [26:v][27:v]hstack[v14];\
 [28:v][29:v]hstack[v15];\
 [30:v][31:v]hstack[v16];\
 [32:v][33:v]hstack[v17];\
 [34:v][35:v]hstack[v8];\
 [v0][v1]vstack[va];\
 [v2][v3]vstack[vb];\
 [v4][v5]vstack[vc];\
 [v6][v7]vstack[vd];\
 [v10][v11]vstack[ve];\
 [v12][v13]vstack[vf];\
 [v14][v15]vstack[vg];\
 [v16][v17]vstack[vh];\
 [v8][v9]vstack[vi];\
 [va][vb]hstack[vab];\
 [vab][vc]hstack[vabc];\
 [vd][ve]hstack[vde];\
 [vde][vf]hstack[vdef];\
 [vg][vh]hstack[vgh];\
 [vgh][vi]hstack[vghi];\
 [vghi][vdef]vstack[vAll1];\
 [vAll1][vabc]vstack[vAll];\
 [vAll]scale=3840:2160" \
 -c:v libx264 \
 -crf 23 \
 -preset veryfast output36.mp4

#if video is not readeable by your system:
#ffmpeg -i output36.mp4 -pix_fmt yuv420p -c:v libx264 -vf scale=out_color_matrix=bt709 -an output36-fix.mp4
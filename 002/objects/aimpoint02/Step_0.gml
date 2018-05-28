
//瞄準點三角函數位置 (套用player基準點定義

if o_player2.xscale == 1
{
     x = o_player2.x-o_player2.aimpoint02x;
     y = o_player2.y-o_player2.aimpoint02y;
}
if o_player2.xscale == -1
{
     x = o_player2.x+o_player2.aimpoint02x;
     y = o_player2.y-o_player2.aimpoint02y;
}

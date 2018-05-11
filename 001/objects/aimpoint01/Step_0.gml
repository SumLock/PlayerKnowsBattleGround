
//瞄準點三角函數位置 (套用player基準點定義
if o_player.xscale == 1
{
x = o_player.x-o_player.aimpoint01x;
y = o_player.y-o_player.aimpoint01y;
}
if o_player.xscale == -1
{
x = o_player.x+o_player.aimpoint01x;
y = o_player.y+o_player.aimpoint01y;
}
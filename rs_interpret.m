all_msg=all_msg; 
all_msg_gf=gf(all_msg,3); 
all_code_msg=rs_rscode(all_msg_gf) ; 
msg=rand(5,3);
msg=floor(msg*8); 
MSG=gf(msg,3); 
code=rs_rscode(MSG); 
RS
a=zeros(5,5);
b=floor(rand(5,2)*8);
noise=[a,b];
NOISE=gf(noise,3); 
in_msg=code+NOISE; 
for ii = 1:5 
 new_m(ii,:) = rs_rrscode(in_msg(ii,:),all_code_msg,all_msg);
end
new_m;
num_same = same(msg,new_m); 
num =num_same/15; 
function interpret_msg=rs_interpre(in_msg,all_code_msg,all_msg)
for i=1:512
 rs_dis(i)=rscode_dis(in_msg,all_code_msg(i,:)); 
end
rs_dis_min =min(rs_dis);
index = find(rs_dis == rs_dis_min);
interpret_msg = all_msg(index(1),:);
return;
end
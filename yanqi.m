MSG=gf(msg,3); %将产生的5组信号映射到GF域
code=rs_rscode(MSG) %对5组信号进行编码，得到5组正确的
RS码
a=zeros(5,5);
b=floor(rand(5,2)*8);
noise=[a,b];
NOISE=gf(noise,3); %产生噪声信号
in_msg=code+NOISE %加噪
for ii = 1:5 %对5组信号进行译码
 new_msg(ii,:) = rs_rrscode(in_msg(ii,:),all_code_msg,all_msg);
end
new_msg%译码输出
num_same = same(msg
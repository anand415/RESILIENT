load ../../../obs_2020_02_26_sep.mat
voc_NOcalib=obs_2020_02_26_2(:,3);
% Sensor3 -200ppb 61.7,50ppm 2.385,1ppm-114.3;base-54
% 61.7-54=7.7->200;60->1ppm;2331->50ppm

vocvalppb_base=voc_NOcalib-50;
vocvalppb=zeros(1,length(vocvalppb_base))';
ind1=(vocvalppb_base>0 & vocvalppb_base<=8);C1 = polyfit([0, 8], [0, 200], 1);vocvalppb(ind1)=C1(1)*vocvalppb_base(ind1)+C1(2);
ind2=(vocvalppb_base<=60 & vocvalppb_base>8);C2 = polyfit([8, 60], [200, 1000], 1);vocvalppb(ind2)=C2(1)*vocvalppb_base(ind2)+C2(2);
ind3=(vocvalppb_base>60);C3 = polyfit([60, 2331],[1000, 50000], 1);vocvalppb(ind3)=C3(1)*vocvalppb_base(ind3)+C3(2);
save('vocvalppb','vocvalppb')
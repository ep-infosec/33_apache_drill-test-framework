SELECT c1,c3,c5,c7,c9 FROM `union_01_v` WHERE c3 in ('CA','WI','MN') UNION SELECT c1,c3,c5,c7,c9 FROM `union_02_v` WHERE c3 NOT in ('CA','WI','MN');
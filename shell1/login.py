#import getpass
#username = input("username: ")
#print("Welcome", username)
#print("Welcone "+ username)
#import this
#a=5** 3
#print (a)
#b=divmod(15,7)
#print(b)
# shang=199//29
# chufa=1922/533
# chengfa=56*35
# mi=5**6
# jiafa=895+65
# jianfa=555-126
# yu=595%68
# print(a, b,shang, chufa, chengfa, mi, jiafa, jianfa, yu,sep="\n")
#
# _kkk=5<214>23
# print(_kkk)
# abc1=5<4>3
# print(abc1)
# abc2=10<20 and 30>23
# print(abc2)
#
# print("数据类型展示:", 11, 0b10001, 0o6454231, 0xabc456, sep="\n")
#
# print('%s is hello' % 'tom')
# print('%s is %s years old' % ('jjk', 20))
# who0="kkk"
# print('%s 提案' % who0 )
# print('''sdfsd
# dasas
# asda
# da
# dad
# a
# da
# das
# d
# asd
# d
# ad
# ad
# ''')
# print('adasd\nsadasdas\ndasdas\tasdasdas\ndadasdas')
# word0='sdasd1211546usdsde'
# # print('dsadd'[4],word0[-1])
# # print(word0, word0[::3], word0[::-3], word0[2:-1:5],sep="\n")
# # print(word0 * 20)
# # print("$-$*$/$->" * 30)
# # len0=len(word0)
# # print(len0)
# b0='ad' in word0
# b1='as' in word0
# print(b0, b1)
# alist=[10, 20, 30, 50, 'tom', 'jerry']
# num=len(alist)
# print(num)
# print(alist[3:])
# b2=10 in alist
# print(b2)
# alist[0]=100
# alist.append('bbb')
# print(alist, len(alist))
# aput=(10, 20, 30, 50, 'tom', 'jerry')
# print(len(aput))
# print(aput[3:])
#
# if 30:
#     print("fei 空列表30")
#
# if 0:
#     print("不打印0")
#
# if 0.0:
#     print("0.0")
#
# if[False]:
#     print("lie biao [False]")
#
# if[]:
#     print("lie biao wei kong")
#
# if 'th' in 'python':
#     print("the 'th' in 'python'")
#
# zidian0={"a": "春眠不觉晓", "b": "横看成岭侧成峰", "c": "日照香炉升紫烟", "d": "飞流直下三千尺"}
# zidian1={"a": "春晓", "b": "题西林壁","c": "望庐山瀑布", "d": "望庐山瀑布"}
# auth={"a": "孟浩然", "b": "苏轼", "c": "李白", "d": "李白"}

# user=input("清输入用户名:")
# password=getpass.getpass("请输入密码:")

# if user=="bob" and password=="123456":
#     print("Login successful")
# else:
#     print("Login inorrect")

# import random
# n=random.randint(1,100)
# n1=int(input("请输入数字:"))
#
# if n==n1:
#     print('猜对了')
# #else:
# #    print('猜错了,输入数字%s,随机数%d' % (n1, n))
# elif n1>n:
#     print('猜大了输入数字%s,随机数%d' % (n1, n))
# else:
#     print('猜大了输入数字%s,随机数%d' % (n1, n))
#
# score=int(input("请输入分数:"))
#
# if score>90 :
#     print("优秀")
# elif score>80 :
#     print("好")
# elif score>70 :
#     print("良")
# elif score>60 :
#     print("及格")
# else :
#     print("你要努力了")
# key=('a', 'b', 'c', 'd')
# k=key[3]
#
# print("诗名:",zidian1[k])
# print("作者:", auth[k])
# print("诗文:",zidian0[k])

# a=10
# b=20
# if a< b:
#     s=a
# else :
#     s=b
# small = a if a < b else b
# print(s, small,sep='\n')
#import random
# print(random.choice('abcd'))
# alist=[10, 20, 30, 50, 'tom', 'jerry']
# print(random.choice(alist))
# print(random.choice(key))

# caiquan=('剪刀', '石头', '布')
# hun1={'1': '剪刀', '2': '石头', '3': '布'}
#
#
# n0=input('请输入下列的一种:\n1剪刀\n2石头\n3布\n')
# cai=random.choice(caiquan)
# pinhe=cai+hun1[n0]
#
# if cai == hun1[n0] :
#     print("\033[32;1m结果为平.都出的为%s\033[0m" % cai)
# #print(pinhe)
# elif pinhe in ('剪刀布', '石头剪刀', '布石头'):
#     print("\033[31;1m结果为输.机器:%s ,你为:%s\033[0m" % (cai, hun1[n0]))
# else:
#     print("\033[33;1m结果为赢.机器:%s ,你为:%s\033[0m" % (cai, hun1[n0]))
#
#
# if cai=="布":
#     if hun1[n0]=="布" :
#         print("结果为平.都出的为%s" %cai)
#     elif hun1[n0]=="剪刀" :
#         print("结果为赢.机器:%s ,你为:%s" % (cai, hun1[n0]))
#     else :
#         print("结果为输.机器:%s ,你为:%s" % (cai, hun1[n0]))
# elif cai=="剪刀":
#     if hun1[n0]=="剪刀" :
#         print("结果为平.都出的为%s" %cai)
#     elif hun1[n0]=="石头" :
#         print("结果为赢.机器:%s ,你为:%s" % (cai, hun1[n0]))
#     else :
#         print("结果为输.机器:%s ,你为:%s" % (cai, hun1[n0]))
# else:
#     if hun1[n0]=="石头" :
#         print("结果为平.都出的为%s" %cai)
#     elif hun1[n0]=="布" :
#         print("结果为赢.机器:%s ,你为:%s" % (cai, hun1[n0]))
#     else :
#         print("\e[31;41m结果为输.机器:%s ,你为:%s\e[0m" % (cai, hun1[n0]))

# result=0
# counter=1
#
# while counter <= 100 :
#     result=result+counter
#     counter=counter+1
#
# print(result)
# print("从1加到100的结果为:%s" % result)
#
# import random
# n=random.randint(1,10000)
# while  1:
#     n1 = int(input("请输入数字:"))
#     if n==n1:
#         print('猜对了')
#         exit(5)
#     #else:
#     #   print('猜错了,输入数字%s,随机数%d' % (n1, n))
#     elif n1>n:
#         print('猜大了输入数字%s,随机数%d' % (n1, n))
#     else:
#         print('猜小了输入数字%s,随机数%d' % (n1, n))
#

# counter=0
# result=0
#
# while counter<100 :
#     counter = counter + 1
#     if counter % 2 :
#     #if counter % 2 == 1 :
#         continue
#     result= counter + result
#
# print("1到100之间偶数之和:%s" % result)

# import random
# c_hun=0
# c_mac=0
# n_add=0
# mac_list=('剪刀', '石头', '布')
# win_list=('剪刀布', '布石头', '石头剪刀')
# hun_list={'1': '剪刀', '2': '石头', '3': '布'}
#
# while c_hun < 2 and c_mac <2 :
#     mac_out=random.choice(mac_list)
#     hun_out_ch=input("根据以下列表进行选择\n'1': '剪刀'\n'2': '石头'\n'3': '布'\n请选择:")
#     hun_out=hun_list[hun_out_ch]
#     zuhe=hun_out+mac_out
#     if mac_out==hun_out :
#         print("本次结果为平局,双方猜拳结果都为%s" % mac_out)
#     elif zuhe in win_list :
#         print("本次结果为\033[31;1m你赢了.\033[0m你出的为%s,机器出的为%s" % (hun_out, mac_out))
#         c_hun+=1
#     else :
#         print("本次结果为\033[32;1m你输了.\033[0m你出的为%s,机器出的为%s" % (hun_out, mac_out))
#         c_mac+=1
#     n_add+=1
#
# print("\n根据三局两胜制规则,游戏结果为:")
#
# if c_mac>c_hun :
#     print("\033[32;1m机器人获胜\033[0m")
# else :
#     print("\033[31;1m你获得了最后的胜利\033[0m")
#
# print("游戏总局数为:%s" % n_add)

#
# print(3**3)
# print(3**(1/3))
# print(1**0.5)
#
# import math
# print(math.cos(90))
# print(math.sin(1))
#
# #import filecmp
# print(math.e)
# print(math.log(math.e))
# print(math.log2(math.e))
#
# a={'a':1, 'b': 2, 'c': 3}
# a['d']=4
# print(a)
#
# b=['sd', 'sda', 123]
# b.append('233')
# print(b)
#
# print(zidian1)
# zidian1['e']="床前明月光"
# gs={'a1': "昔有佳人公孙氏"}
# gs['a2']="一舞剑器动四方"
# gs['a3']="观者如山色沮丧"
# gs['a4']="天地为之久低昂"
# ggs=[]
# ggs.append("昔有佳人公孙氏")
# ggs.append("一舞剑器动四方")
# ggs.append("观者如山色沮丧")
# ggs.append("天地为之久低昂")
# ggs.append("霍如羿射九日落")
# ggs.append("矫如群帝骖龙翔")
# ggs.append("来如雷霆收震怒")
# ggs.append("罢如江海凝清光")
# ggs.append("绛唇珠袖两寂寞")
# ggs.append("晚有弟子传芬芳")
# ggs.append("临颍美人在白帝")
# ggs.append("妙舞此曲神扬扬")
# ggs.append("与余问答既有以")
# ggs.append("感时抚事增惋伤")
# ggs.append("先帝侍女八千人")
# ggs.append("公孙剑器初第一")
# ggs.append("五十年间似反掌")
# ggs.append("风尘澒洞昏王室")
# ggs.append("梨园弟子散如烟")
# ggs.append("女乐馀姿映寒日")
# ggs.append("金粟堆南木已拱")
# ggs.append("瞿唐石城草萧瑟")
# ggs.append("玳筵急管曲复终")
# ggs.append("乐极哀来月东出")
# ggs.append("老夫不知其所往")
# ggs.append("足茧荒山转愁疾")
# print(ggs)
# print(gs)
#
# gs.pop('a3')
# print(gs)\

import random
diancai=['a', 'b', 'c', 'd']
diancai_len=len(diancai)
print(diancai_len)
num=3
while num :
    rd=random.randint(1,diancai_len)-1
    print(diancai[rd])
    diancai.pop(rd)
    print(diancai)
    num-=1
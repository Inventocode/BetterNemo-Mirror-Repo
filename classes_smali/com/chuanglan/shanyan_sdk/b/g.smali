.class public Lcom/chuanglan/shanyan_sdk/b/g;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method public static a(Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/b/k;
    .registers 2

    const-string v0, "SAMSUNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xa

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_c
    const-string v0, "XIAOMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_17
    const-string v0, "BLACKSHARK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x4

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_22
    const-string v0, "IQOO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_2d
    const-string v0, "OPPO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_38
    const-string v0, "VIVO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x2

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_43
    const-string v0, "HONOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x6

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_4e
    const-string v0, "MEIZU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v0, 0x9

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_5a
    const-string v0, "REDMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x3

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_65
    const-string v0, "HUA_WEI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x7

    sput v0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_70
    const-string v0, "HUAWEI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7c

    const/16 p0, 0x8

    sput p0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    :cond_7c
    sget p0, Lcom/chuanglan/shanyan_sdk/b/g;->a:I

    packed-switch p0, :pswitch_data_a8

    const/4 p0, 0x0

    return-object p0

    :pswitch_83  #0xa
    new-instance p0, Lcom/chuanglan/shanyan_sdk/b/m;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/m;-><init>()V

    return-object p0

    :pswitch_89  #0x9
    new-instance p0, Lcom/chuanglan/shanyan_sdk/b/d;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/d;-><init>()V

    return-object p0

    :pswitch_8f  #0x6, 0x7, 0x8
    new-instance p0, Lcom/chuanglan/shanyan_sdk/b/a;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/a;-><init>()V

    return-object p0

    :pswitch_95  #0x3, 0x4, 0x5
    new-instance p0, Lcom/chuanglan/shanyan_sdk/b/c;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/c;-><init>()V

    return-object p0

    :pswitch_9b  #0x1, 0x2
    new-instance p0, Lcom/chuanglan/shanyan_sdk/b/n;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/n;-><init>()V

    return-object p0

    :pswitch_a1  #0x0
    new-instance p0, Lcom/chuanglan/shanyan_sdk/b/j;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/j;-><init>()V

    return-object p0

    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_a1  #00000000
        :pswitch_9b  #00000001
        :pswitch_9b  #00000002
        :pswitch_95  #00000003
        :pswitch_95  #00000004
        :pswitch_95  #00000005
        :pswitch_8f  #00000006
        :pswitch_8f  #00000007
        :pswitch_8f  #00000008
        :pswitch_89  #00000009
        :pswitch_83  #0000000a
    .end packed-switch
.end method

.class public Lcom/chuanglan/shanyan_sdk/tool/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/tool/k$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/tool/k;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

.field private e:Lcom/chuanglan/shanyan_sdk/tool/k$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/k;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/k;->a:Lcom/chuanglan/shanyan_sdk/tool/k;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/k;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/k;->a:Lcom/chuanglan/shanyan_sdk/tool/k;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/k;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/k;->a:Lcom/chuanglan/shanyan_sdk/tool/k;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/k;->a:Lcom/chuanglan/shanyan_sdk/tool/k;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V
    .registers 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/k;->e:Lcom/chuanglan/shanyan_sdk/tool/k$a;

    if-eqz v1, :cond_1f

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-interface/range {v1 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/k$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IJJ)V
    .registers 22

    move-object v14, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "CTCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e9

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_68

    const-string v0, "CUCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "cmccSwitch"

    invoke-static {v0, v5, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_2f

    if-eq v0, v3, :cond_2c

    const/16 v3, 0x3e9

    const-string/jumbo v0, "移动运营商通道未开启"

    goto :goto_79

    :cond_2c
    const-string v7, "5"

    goto :goto_5b

    :cond_2f
    const-string v7, "1"

    goto :goto_5b

    :cond_32
    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "cuccSwitch"

    invoke-static {v0, v5, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v6, "woSwitch"

    invoke-static {v5, v6, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_59

    if-eq v5, v3, :cond_56

    if-eq v0, v4, :cond_53

    if-eq v0, v3, :cond_50

    const/16 v3, 0x3e9

    const-string/jumbo v0, "联通运营商通道未开启"

    goto :goto_79

    :cond_50
    const-string v7, "6"

    goto :goto_5b

    :cond_53
    const-string v7, "2"

    goto :goto_5b

    :cond_56
    const-string v7, "8"

    goto :goto_5b

    :cond_59
    const-string v7, "4"

    :goto_5b
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Ljava/lang/String;IJJLjava/lang/String;)V

    goto :goto_99

    :cond_68
    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "ctccSwitch"

    invoke-static {v0, v5, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_96

    if-eq v0, v3, :cond_93

    const/16 v3, 0x3e9

    const-string/jumbo v0, "电信运营商通道未开启"

    :goto_79
    invoke-static {v1, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    const/4 v13, 0x1

    const-string v5, "1001"

    const-string v6, "check_error"

    move-object v0, p0

    move v1, v3

    move-object/from16 v2, p1

    move-object v3, v4

    move/from16 v4, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v0 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto :goto_99

    :cond_93
    const-string v7, "7"

    goto :goto_5b

    :cond_96
    const-string v7, "3"

    goto :goto_5b

    :goto_99
    return-void
.end method

.method private a(Ljava/lang/String;IJJJILjava/lang/String;)V
    .registers 26

    move-object v10, p0

    iget-object v0, v10, Lcom/chuanglan/shanyan_sdk/tool/k;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move/from16 v1, p9

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/c;->setOverTime(J)V

    iget-object v0, v10, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cmccAppid"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v10, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cmccAppkey"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/chuanglan/shanyan_sdk/tool/k;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    new-instance v14, Lcom/chuanglan/shanyan_sdk/tool/k$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p7

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/chuanglan/shanyan_sdk/tool/k$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/k;Ljava/lang/String;IJJJ)V

    invoke-virtual {v13, v11, v12, v14}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;IJJLjava/lang/String;)V
    .registers 26

    move-object/from16 v15, p0

    const-string v0, ""

    const/4 v14, 0x0

    :try_start_5
    iget-object v1, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v2, "SIMOperator"

    invoke-static {v1, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v3, "preInitStatus"

    invoke-static {v2, v3, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v4, "SIMDATAID"

    invoke-static {v3, v4, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v3, :cond_107

    iget-object v3, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    iget-object v3, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "timeend"

    const-wide/16 v6, 0x1

    invoke-static {v1, v5, v6, v7}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_54

    invoke-direct/range {p0 .. p7}, Lcom/chuanglan/shanyan_sdk/tool/k;->b(Ljava/lang/String;IJJLjava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_52} :catch_10f

    goto/16 :goto_163

    :cond_54
    const-string v1, "uuid"

    if-eqz v2, :cond_b1

    :try_start_58
    iget-object v2, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_62} :catch_ad

    if-eqz v0, :cond_80

    :try_start_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_80} :catch_10f

    :cond_80
    const/16 v2, 0x3fe

    const/16 v0, 0x3fe

    :try_start_84
    const-string/jumbo v1, "预取号成功"

    const-string/jumbo v3, "闪验SDK预取号成功"

    invoke-static {v0, v1, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const-string v16, "cache"
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_95} :catch_ad

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    const/16 v17, 0x0

    move v14, v0

    move-object/from16 v15, v16

    :try_start_a6
    invoke-direct/range {v1 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    move-object/from16 v15, p0

    goto/16 :goto_163

    :catch_ad
    move-exception v0

    const/16 v17, 0x0

    goto :goto_104

    :cond_b1
    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/k;->b()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b6} :catch_103

    move-object/from16 v15, p0

    :try_start_b8
    iget-object v2, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v15, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    const/16 v2, 0x3ff

    const/16 v0, 0x3ff

    const-string/jumbo v1, "预取号失败"

    const-string/jumbo v3, "操作频繁"

    invoke-static {v0, v1, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1023"

    const-string v7, "cache"

    const-wide/16 v8, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-virtual/range {v1 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto :goto_163

    :catch_103
    move-exception v0

    :goto_104
    move-object/from16 v15, p0

    goto :goto_112

    :cond_107
    const/16 v17, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/chuanglan/shanyan_sdk/tool/k;->b(Ljava/lang/String;IJJLjava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_10c} :catch_10d

    goto :goto_163

    :catch_10d
    move-exception v0

    goto :goto_112

    :catch_10f
    move-exception v0

    const/16 v17, 0x0

    :goto_112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mOperatePreCMCC Exception_e="

    aput-object v2, v1, v17

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "ExceptionShanYanTask"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x3f6

    const/16 v1, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preTimeCheck--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const-string v6, "1014"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-virtual/range {v1 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :goto_163
    return-void
.end method

.method private b()V
    .registers 10

    const-string v0, "timeend"

    const-wide/16 v1, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v4, "preFailFlag"

    const-wide/16 v5, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-wide/16 v6, 0x1

    invoke-static {v5, v0, v6, v7}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    cmp-long v7, v5, v3

    if-lez v7, :cond_3f

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_29

    goto :goto_3f

    :catch_29
    move-exception v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "checkFailFlag Exception_e="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private b(Ljava/lang/String;IJJJILjava/lang/String;)V
    .registers 25

    new-instance v0, Lcn/com/chinatelecom/account/api/CtSetting;

    move/from16 v1, p9

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v2, v2, v1}, Lcn/com/chinatelecom/account/api/CtSetting;-><init>(III)V

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v1

    new-instance v13, Lcom/chuanglan/shanyan_sdk/tool/k$2;

    move-object v2, v13

    move-object v3, p0

    move-object/from16 v4, p10

    move-object v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p7

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/chuanglan/shanyan_sdk/tool/k$2;-><init>(Lcom/chuanglan/shanyan_sdk/tool/k;Ljava/lang/String;Ljava/lang/String;IJJJ)V

    invoke-virtual {v1, v0, v13}, Lcn/com/chinatelecom/account/api/CtAuth;->requestPreLogin(Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;IJJLjava/lang/String;)V
    .registers 23

    move-object v14, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p7

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/i;->d(Landroid/content/Context;)I

    move-result v0

    iget v1, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->c:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_35

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    const/16 v1, 0x3ff

    const/16 v0, 0x3ff

    const-string/jumbo v3, "预取号失败"

    const-string/jumbo v4, "操作频繁"

    invoke-static {v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v7, 0x0

    const/4 v13, 0x1

    const-string v5, "1023"

    const-string v6, "cache"

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v0 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    return-void

    :cond_35
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/k;->c()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v3, "uuid"

    invoke-static {v1, v3, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const/4 v1, 0x4

    const-string v3, "getPhoneInfoTimeOut"

    invoke-static {v0, v3, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "CTCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    const-string v0, "CUCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Ljava/lang/String;IJJJILjava/lang/String;)V

    goto :goto_c2

    :cond_85
    const-string v0, "4"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-string v0, "8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    goto :goto_a5

    :cond_96
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/k;->d(Ljava/lang/String;IJJJILjava/lang/String;)V

    goto :goto_c2

    :cond_a5
    :goto_a5
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/k;->c(Ljava/lang/String;IJJJILjava/lang/String;)V

    goto :goto_c2

    :cond_b4
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/k;->b(Ljava/lang/String;IJJJILjava/lang/String;)V

    :goto_c2
    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->e:Lcom/chuanglan/shanyan_sdk/tool/k$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/chuanglan/shanyan_sdk/tool/k$a;->a()V

    :cond_7
    return-void
.end method

.method private c(Ljava/lang/String;IJJJILjava/lang/String;)V
    .registers 26

    move-object v11, p0

    iget-object v0, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "woClientId"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const-string v3, "woClientSecret"

    invoke-static {v1, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->getInstance()Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    move-result-object v2

    iget-object v3, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->getInstance()Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    move-result-object v12

    move/from16 v0, p9

    mul-int/lit16 v13, v0, 0x3e8

    new-instance v14, Lcom/chuanglan/shanyan_sdk/tool/k$3;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/k$3;-><init>(Lcom/chuanglan/shanyan_sdk/tool/k;Ljava/lang/String;Ljava/lang/String;IJJJ)V

    invoke-virtual {v12, v13, v14}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->login(ILcom/unikuwei/mianmi/account/shield/ResultListener;)V

    return-void
.end method

.method private d(Ljava/lang/String;IJJJILjava/lang/String;)V
    .registers 25

    move-object v11, p0

    iget-object v0, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cuccAppid"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const-string v3, "cuccAppkey"

    invoke-static {v1, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sdk/base/module/manager/SDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    move-result-object v12

    new-instance v13, Lcom/chuanglan/shanyan_sdk/tool/k$4;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p10

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/k$4;-><init>(Lcom/chuanglan/shanyan_sdk/tool/k;Ljava/lang/String;Ljava/lang/String;IJJJ)V

    move/from16 v0, p9

    invoke-virtual {v12, v0, v13}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->login(ILcom/sdk/base/api/CallBack;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;JJ)V
    .registers 22

    move-object v14, p0

    move-object/from16 v2, p2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "startGetPhoneInfo processName"

    aput-object v3, v0, v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "operator"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const-string v1, "ProcessShanYanLogger"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_b5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "CTCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e9

    if-nez v0, :cond_84

    const-string v0, "CUCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "cmccSwitch"

    invoke-static {v0, v5, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_4b

    if-eq v0, v4, :cond_48

    const/16 v3, 0x3e9

    const-string/jumbo v0, "移动运营商通道未开启"

    goto :goto_95

    :cond_48
    const-string v7, "5"

    goto :goto_77

    :cond_4b
    const-string v7, "1"

    goto :goto_77

    :cond_4e
    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "cuccSwitch"

    invoke-static {v0, v5, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v6, "woSwitch"

    invoke-static {v5, v6, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v3, :cond_75

    if-eq v5, v4, :cond_72

    if-eq v0, v3, :cond_6f

    if-eq v0, v4, :cond_6c

    const/16 v3, 0x3e9

    const-string/jumbo v0, "联通运营商通道未开启"

    goto :goto_95

    :cond_6c
    const-string v7, "6"

    goto :goto_77

    :cond_6f
    const-string v7, "2"

    goto :goto_77

    :cond_72
    const-string v7, "8"

    goto :goto_77

    :cond_75
    const-string v7, "4"

    :goto_77
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Ljava/lang/String;IJJLjava/lang/String;)V

    goto :goto_c5

    :cond_84
    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    const-string v5, "ctccSwitch"

    invoke-static {v0, v5, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_b2

    if-eq v0, v4, :cond_af

    const/16 v3, 0x3e9

    const-string/jumbo v0, "电信运营商通道未开启"

    :goto_95
    invoke-static {v1, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    const/4 v13, 0x1

    const-string v5, "1001"

    const-string v6, "check_error"

    move-object v0, p0

    move v1, v3

    move-object/from16 v2, p2

    move-object v3, v4

    move/from16 v4, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v0 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto :goto_c5

    :cond_af
    const-string v7, "7"

    goto :goto_77

    :cond_b2
    const-string v7, "3"

    goto :goto_77

    :cond_b5
    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Ljava/lang/String;IJJ)V

    :goto_c5
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V
    .registers 29

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/k;->e:Lcom/chuanglan/shanyan_sdk/tool/k$a;

    if-eqz v1, :cond_1c

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    invoke-interface/range {v1 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/k$a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :cond_1c
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;I)V
    .registers 4

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iput p3, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->c:I

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/k$a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/k;->e:Lcom/chuanglan/shanyan_sdk/tool/k$a;

    return-void
.end method

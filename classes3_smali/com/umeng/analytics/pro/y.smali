.class public Lcom/umeng/analytics/pro/y;
.super Ljava/lang/Object;
.source "SessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/y$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/umeng/analytics/pro/y;


# instance fields
.field private a:Lcom/umeng/analytics/pro/w;

.field private b:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/pro/y$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/umeng/analytics/pro/x;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/x;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/y;->a:Lcom/umeng/analytics/pro/w;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    .line 255
    :try_start_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-wide p1, v0

    :goto_c
    cmp-long v2, p1, v0

    if-gtz v2, :cond_14

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_14
    return-wide p1
.end method

.method public static a()Lcom/umeng/analytics/pro/y;
    .registers 2

    .line 40
    sget-object v0, Lcom/umeng/analytics/pro/y;->c:Lcom/umeng/analytics/pro/y;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/umeng/analytics/pro/y;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/pro/y;->c:Lcom/umeng/analytics/pro/y;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/umeng/analytics/pro/y;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/y;-><init>()V

    sput-object v1, Lcom/umeng/analytics/pro/y;->c:Lcom/umeng/analytics/pro/y;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 48
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/analytics/pro/y;->c:Lcom/umeng/analytics/pro/y;

    return-object v0
.end method

.method private a(JJJLjava/lang/String;Z)V
    .registers 21

    move-object v0, p0

    .line 281
    iget-object v1, v0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 282
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/umeng/analytics/pro/y$a;

    if-eqz p8, :cond_24

    .line 285
    :try_start_18
    iget-object v5, v0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    move-object/from16 v4, p7

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-interface/range {v3 .. v11}, Lcom/umeng/analytics/pro/y$a;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    goto :goto_9

    .line 287
    :cond_24
    iget-object v4, v0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-interface/range {v3 .. v10}, Lcom/umeng/analytics/pro/y$a;->a(Ljava/lang/String;JJJ)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    goto :goto_9

    :catch_2e
    nop

    goto :goto_9

    :cond_30
    return-void
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .registers 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 197
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pre_session_id"

    .line 198
    invoke-virtual/range {p0 .. p1}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    nop

    .line 202
    :goto_1a
    invoke-direct/range {p0 .. p1}, Lcom/umeng/analytics/pro/y;->h(Landroid/content/Context;)J

    move-result-wide v11

    .line 203
    invoke-direct/range {p0 .. p1}, Lcom/umeng/analytics/pro/y;->i(Landroid/content/Context;)J

    move-result-wide v13

    .line 204
    iget-object v15, v9, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    mul-long v16, v0, v2

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>>*** 读取 foreground count 值完成，count次数："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickRT"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "header_foreground_count"

    .line 211
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 213
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist()Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "--->>>*** 读取 foreground count druation值完成，终止checker timer."

    .line 214
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->removeEvent()V

    goto :goto_64

    :cond_59
    const-string v0, "--->>>*** 读取 foreground count druation值完成，无未处理check timer事件。"

    .line 217
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_5f
    const-string v0, "--->>>*** foreground count druation云控参数关闭。"

    .line 220
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v11

    move-wide/from16 v5, v16

    move-object v7, v15

    .line 224
    invoke-direct/range {v0 .. v8}, Lcom/umeng/analytics/pro/y;->a(JJJLjava/lang/String;Z)V

    .line 227
    iget-object v0, v9, Lcom/umeng/analytics/pro/y;->a:Lcom/umeng/analytics/pro/w;

    invoke-interface {v0, v10}, Lcom/umeng/analytics/pro/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    .line 230
    invoke-direct/range {v0 .. v8}, Lcom/umeng/analytics/pro/y;->a(JJJLjava/lang/String;Z)V

    .line 234
    iget-object v0, v9, Lcom/umeng/analytics/pro/y;->a:Lcom/umeng/analytics/pro/w;

    iget-object v1, v9, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    invoke-interface {v0, v10, v1}, Lcom/umeng/analytics/pro/w;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    iget-object v0, v9, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g(Landroid/content/Context;)Z
    .registers 8

    .line 241
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 244
    :cond_a
    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1
.end method

.method private h(Landroid/content/Context;)J
    .registers 4

    const-string v0, "a_end_time"

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/y;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private i(Landroid/content/Context;)J
    .registers 4

    const-string v0, "session_start_time"

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/y;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private j(Landroid/content/Context;)Z
    .registers 12

    .line 300
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 302
    :try_start_4
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "a_start_time"

    const-wide/16 v2, 0x0

    .line 304
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "a_end_time"

    .line 305
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v6, "header_foreground_count"

    .line 307
    invoke-static {v6}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_58

    const-string v7, "MobclickRT"

    if-eqz v6, :cond_3b

    cmp-long v6, v4, v2

    if-lez v6, :cond_3b

    cmp-long v6, v0, v2

    if-nez v6, :cond_3b

    .line 311
    :try_start_28
    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long p1, v8, v2

    if-lez p1, :cond_3b

    const-wide/16 v0, 0x1388

    mul-long v8, v8, v0

    const-string p1, "--->>> last session end time stamp = 0, reconstruct it by foreground count value."

    .line 314
    invoke-static {v7, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-long v0, v4, v8

    .line 320
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> interval of last session is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v0, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/umeng/analytics/pro/y;->a:Lcom/umeng/analytics/pro/w;

    invoke-interface {p1, v4, v5, v0, v1}, Lcom/umeng/analytics/pro/w;->a(JJ)Z

    move-result p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_57} :catch_58

    return p1

    :catch_58
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 68
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    const-string v0, ""

    .line 76
    :try_start_b
    const-class v1, Lcom/umeng/analytics/pro/y;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_1f

    .line 77
    :try_start_e
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "pre_session_id"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    monitor-exit v1

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    :goto_1f
    return-object v0
.end method

.method public a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6

    .line 156
    iget-object p1, p0, Lcom/umeng/analytics/pro/y;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%0"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "d"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/y;->e:Ljava/lang/String;

    .line 160
    :cond_54
    iget-object p1, p0, Lcom/umeng/analytics/pro/y;->e:Ljava/lang/String;

    return-object p1
.end method

.method public a(J)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->a:Lcom/umeng/analytics/pro/w;

    invoke-interface {v0, p1, p2}, Lcom/umeng/analytics/pro/w;->a(J)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/y$a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    .line 359
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 360
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public b()J
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->a:Lcom/umeng/analytics/pro/w;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/w;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 95
    :try_start_1
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p1, ""
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    .line 98
    monitor-exit p0

    return-object p1

    .line 100
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/y;->e(Landroid/content/Context;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_21

    if-eqz v0, :cond_1d

    .line 105
    :try_start_17
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/y;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_21

    .line 109
    :catch_1d
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/umeng/analytics/pro/y$a;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 369
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    .line 372
    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    :goto_12
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, ""

    return-object p1

    .line 124
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/y;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_f

    .line 127
    :catch_f
    iget-object p1, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    return-object p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 142
    :try_start_8
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_15

    .line 146
    :catch_15
    :cond_15
    iget-object p1, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    return-object p1
.end method

.method public e(Landroid/content/Context;)Z
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    .line 173
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 174
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/y;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 175
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/y;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    return p1
.end method

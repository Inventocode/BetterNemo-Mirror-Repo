.class public Lcom/tencent/open/b/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/open/b/h;


# instance fields
.field protected b:Ljava/util/Random;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/os/HandlerThread;

.field protected f:Landroid/os/Handler;

.field protected g:Ljava/util/concurrent/Executor;

.field protected h:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/tencent/open/b/h;->e:Landroid/os/HandlerThread;

    .line 119
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/b/h;->b:Ljava/util/Random;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/b/h;->c:Ljava/util/List;

    .line 123
    invoke-static {}, Lcom/tencent/open/utils/l;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/b/h;->g:Ljava/util/concurrent/Executor;

    .line 124
    invoke-static {}, Lcom/tencent/open/utils/l;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/b/h;->h:Ljava/util/concurrent/Executor;

    .line 126
    iget-object v0, p0, Lcom/tencent/open/b/h;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_41

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "opensdk.report.handlerthread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/open/b/h;->e:Landroid/os/HandlerThread;

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    :cond_41
    iget-object v0, p0, Lcom/tencent/open/b/h;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/tencent/open/b/h;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 132
    new-instance v0, Lcom/tencent/open/b/h$1;

    iget-object v1, p0, Lcom/tencent/open/b/h;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/open/b/h$1;-><init>(Lcom/tencent/open/b/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    :cond_5e
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/h;
    .registers 2

    const-class v0, Lcom/tencent/open/b/h;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lcom/tencent/open/b/h;->a:Lcom/tencent/open/b/h;

    if-nez v1, :cond_e

    .line 112
    new-instance v1, Lcom/tencent/open/b/h;

    invoke-direct {v1}, Lcom/tencent/open/b/h;-><init>()V

    sput-object v1, Lcom/tencent/open/b/h;->a:Lcom/tencent/open/b/h;

    .line 115
    :cond_e
    sget-object v1, Lcom/tencent/open/b/h;->a:Lcom/tencent/open/b/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a(I)I
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 496
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object p1

    const-string v0, "Common_CGIReportFrequencySuccess"

    .line 497
    invoke-virtual {p1, v0}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_28

    const/16 p1, 0xa

    goto :goto_28

    .line 501
    :cond_16
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object p1

    const-string v0, "Common_CGIReportFrequencyFailed"

    .line 502
    invoke-virtual {p1, v0}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_28

    const/16 p1, 0x64

    :cond_28
    :goto_28
    return p1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 165
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->reportVia, bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.ReportManager"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "report_via"

    .line 166
    invoke-virtual {p0, v0, p2}, Lcom/tencent/open/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_28

    if-nez p3, :cond_28

    return-void

    .line 170
    :cond_28
    iget-object p2, p0, Lcom/tencent/open/b/h;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/tencent/open/b/h$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/tencent/open/b/h$2;-><init>(Lcom/tencent/open/b/h;Landroid/os/Bundle;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;JJJI)V
    .registers 20

    const-string v9, ""

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 258
    invoke-virtual/range {v0 .. v10}, Lcom/tencent/open/b/h;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;JJJILjava/lang/String;Z)V
    .registers 12

    .line 281
    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-->reportCgi, command: "

    invoke-virtual {p10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | startTime: "

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " | reqSize:"

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " | rspSize: "

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " | responseCode: "

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | detail: "

    invoke-virtual {p10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "openSDK_LOG.ReportManager"

    invoke-static {p2, p1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 726
    :cond_b
    new-instance v0, Lcom/tencent/open/b/h$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/open/b/h$4;-><init>(Lcom/tencent/open/b/h;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tencent/open/utils/l;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;I)Z
    .registers 7

    const-string v0, "report_cgi"

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 468
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object v0

    const-string v2, "Common_CGIReportMaxcount"

    .line 469
    invoke-virtual {v0, v2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_38

    :cond_1c
    move v1, v0

    goto :goto_38

    :cond_1e
    const-string v0, "report_via"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 472
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object v0

    const-string v2, "Agent_ReportBatchCount"

    .line 473
    invoke-virtual {v0, v2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 476
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->availableCount, report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | dataSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | maxcount: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openSDK_LOG.ReportManager"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p2, v1, :cond_62

    const/4 p1, 0x1

    return p1

    :cond_62
    return v3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->availableFrequency, report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | ext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.ReportManager"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    return v2

    :cond_26
    const-string v0, "report_cgi"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-eqz v0, :cond_44

    .line 435
    :try_start_31
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_43

    .line 439
    invoke-virtual {p0, p1}, Lcom/tencent/open/b/h;->a(I)I

    move-result p1

    .line 440
    iget-object p2, p0, Lcom/tencent/open/b/h;->b:Ljava/util/Random;

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-ge p2, p1, :cond_5b

    const/4 v2, 0x1

    goto :goto_5b

    :catch_43
    return v2

    :cond_44
    const-string v0, "report_via"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 446
    invoke-static {p2}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;)I

    move-result p1

    .line 447
    iget-object p2, p0, Lcom/tencent/open/b/h;->b:Ljava/util/Random;

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-ge p2, p1, :cond_5b

    move v4, p1

    const/4 v2, 0x1

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v4, p1

    .line 454
    :cond_5c
    :goto_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-->availableFrequency, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " | frequency: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected c()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    const-string v1, "report_via"

    .line 578
    invoke-static {v1}, Lcom/tencent/open/b/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 580
    iget-object v2, p0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->prepareViaData, mViaList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.ReportManager"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_35

    return-object v3

    .line 586
    :cond_35
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 587
    iget-object v4, p0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "-->prepareViaData, put bundle to json array exception"

    if-eqz v5, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    .line 588
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 590
    check-cast v5, Lcom/tencent/open/b/c;

    .line 591
    iget-object v8, v5, Lcom/tencent/open/b/c;->a:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 593
    :try_start_6b
    iget-object v10, v5, Lcom/tencent/open/b/c;->a:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_77

    const-string v10, ""

    .line 597
    :cond_77
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_7a} :catch_7b

    goto :goto_5f

    :catch_7b
    move-exception v9

    .line 599
    invoke-static {v2, v6, v9}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 603
    :cond_80
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_40

    .line 605
    :cond_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->prepareViaData, JSONArray array: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 609
    :try_start_a1
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_a4} :catch_b1

    .line 614
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 615
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_b1
    move-exception v0

    .line 611
    invoke-static {v2, v6, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method protected d()V
    .registers 3

    .line 624
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 627
    :cond_b
    iget-object v0, p0, Lcom/tencent/open/b/h;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tencent/open/b/h$3;

    invoke-direct {v1, p0}, Lcom/tencent/open/b/h$3;-><init>(Lcom/tencent/open/b/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

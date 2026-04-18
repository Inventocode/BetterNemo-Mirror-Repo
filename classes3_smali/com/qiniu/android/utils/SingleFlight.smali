.class public Lcom/qiniu/android/utils/SingleFlight;
.super Ljava/lang/Object;
.source "SingleFlight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/SingleFlight$ActionHandler;,
        Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;,
        Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;,
        Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$700(Lcom/qiniu/android/utils/SingleFlight;)Ljava/util/Map;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/SingleFlight$ActionHandler<",
            "TT;>;",
            "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 27
    monitor-enter p0

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 30
    :try_start_8
    iget-object v2, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    goto :goto_15

    :catchall_11
    move-exception p1

    goto/16 :goto_ac

    :cond_14
    move-object v2, v1

    :goto_15
    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 34
    new-instance v2, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-direct {v2, v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;-><init>(Lcom/qiniu/android/utils/SingleFlight$1;)V

    if-eqz p1, :cond_24

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    const/4 v0, 0x1

    .line 41
    :cond_25
    monitor-enter v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_11

    .line 42
    :try_start_26
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 44
    new-instance v5, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;

    invoke-direct {v5, v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;-><init>(Lcom/qiniu/android/utils/SingleFlight$1;)V

    .line 45
    invoke-static {v5, p3}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$302(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    .line 46
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_a9

    .line 49
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_11

    if-eqz v4, :cond_54

    .line 52
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_4f

    if-eqz p3, :cond_4e

    .line 56
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$600(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;->complete(Ljava/lang/Object;)V

    :cond_4e
    return-void

    .line 53
    :cond_4f
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :cond_54
    if-nez v0, :cond_57

    return-void

    .line 69
    :cond_57
    :try_start_57
    new-instance p3, Lcom/qiniu/android/utils/SingleFlight$1;

    invoke-direct {p3, p0, v2, p1}, Lcom/qiniu/android/utils/SingleFlight$1;-><init>(Lcom/qiniu/android/utils/SingleFlight;Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/qiniu/android/utils/SingleFlight$ActionHandler;->action(Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5f} :catch_60

    goto :goto_a5

    :catch_60
    move-exception p2

    .line 95
    monitor-enter v2

    .line 96
    :try_start_62
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z

    move-result p3

    if-eqz p3, :cond_6a

    .line 97
    monitor-exit v2

    return-void

    .line 99
    :cond_6a
    invoke-static {v2, v3}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$102(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Z)Z

    .line 100
    invoke-static {v2, p2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$502(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_a6

    if-eqz p1, :cond_87

    .line 104
    monitor-enter p0

    .line 105
    :try_start_7d
    iget-object p3, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit p0

    goto :goto_87

    :catchall_84
    move-exception p1

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_84

    throw p1

    .line 108
    :cond_87
    :goto_87
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8b
    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;

    if-eqz p2, :cond_8b

    .line 109
    invoke-static {p2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    move-result-object p2

    if-nez p2, :cond_a0

    goto :goto_8b

    .line 110
    :cond_a0
    invoke-static {v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :cond_a5
    :goto_a5
    return-void

    :catchall_a6
    move-exception p1

    .line 102
    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw p1

    :catchall_a9
    move-exception p1

    .line 48
    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw p1

    .line 49
    :goto_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ab .. :try_end_ad} :catchall_11

    throw p1
.end method

.class public Lcom/umeng/commonsdk/statistics/TagHelper;
.super Ljava/lang/Object;
.source "TagHelper.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static moduleTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/TagHelper;->lock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteModuleTag(Ljava/lang/String;)V
    .registers 3

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/statistics/TagHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 35
    sget-object v1, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 40
    :catchall_10
    :cond_10
    :try_start_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static getModuleTags()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    sget-object v1, Lcom/umeng/commonsdk/statistics/TagHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_8
    sget-object v2, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 48
    sget-object v2, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_36

    goto :goto_1a

    .line 55
    :catchall_36
    :cond_36
    :try_start_36
    monitor-exit v1

    return-object v0

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public static setModuleTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 16
    sget-object v0, Lcom/umeng/commonsdk/statistics/TagHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_16

    const-string p0, "UMLog"

    const-string p1, "传入key-value键值对个数已达30个，setModuleTag调用无效。"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_23

    .line 20
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_25

    return-void

    .line 22
    :cond_16
    :try_start_16
    sget-object v1, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 23
    sget-object v1, Lcom/umeng/commonsdk/statistics/TagHelper;->moduleTags:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_23

    .line 28
    :catchall_23
    :cond_23
    :try_start_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw p0
.end method

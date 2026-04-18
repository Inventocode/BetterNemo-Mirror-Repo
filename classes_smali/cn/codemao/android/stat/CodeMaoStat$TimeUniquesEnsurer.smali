.class Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;
.super Ljava/lang/Object;
.source "CodeMaoStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/CodeMaoStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeUniquesEnsurer"
.end annotation


# instance fields
.field final addition:J

.field final lastTsMs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 1536
    iput-wide v0, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->addition:J

    return-void
.end method


# virtual methods
.method currentTimeMillis()J
    .registers 5

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method declared-synchronized uniqueTimestamp()J
    .registers 6

    monitor-enter p0

    .line 1543
    :try_start_1
    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->currentTimeMillis()J

    move-result-wide v0

    .line 1546
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2e

    .line 1547
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2e

    .line 1549
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1550
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_5a

    .line 1551
    monitor-exit p0

    return-wide v0

    .line 1555
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2e

    .line 1558
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4f

    .line 1559
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    .line 1561
    :cond_4f
    iget-object v2, p0, Lcn/codemao/android/stat/CodeMaoStat$TimeUniquesEnsurer;->lastTsMs:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_2e .. :try_end_58} :catchall_5a

    .line 1562
    monitor-exit p0

    return-wide v0

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

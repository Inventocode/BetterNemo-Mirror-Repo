.class public Lcom/geetest/sdk/aa;
.super Ljava/util/Observable;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/geetest/sdk/ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geetest/sdk/ab;

    .line 2
    invoke-virtual {v1}, Lcom/geetest/sdk/ab;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public declared-synchronized a(Lcom/geetest/sdk/ab;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_14

    .line 7
    :try_start_3
    iget-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_14
    :goto_14
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geetest/sdk/ab;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/geetest/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geetest/sdk/ab;

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/geetest/sdk/ab;->a(ZLjava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geetest/sdk/ab;

    .line 2
    invoke-virtual {v1}, Lcom/geetest/sdk/ab;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

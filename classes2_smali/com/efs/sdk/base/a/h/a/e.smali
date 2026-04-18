.class public Lcom/efs/sdk/base/a/h/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/a/h/a/b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/efs/sdk/base/a/h/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/efs/sdk/base/a/h/a/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/a/h/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/efs/sdk/base/a/h/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/efs/sdk/base/a/h/a/e;->b:Lcom/efs/sdk/base/a/h/a/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1069
    :try_start_1
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_7

    .line 58
    :cond_11
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->b:Lcom/efs/sdk/base/a/h/a/c;

    invoke-interface {v1}, Lcom/efs/sdk/base/a/h/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1075
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/a/h/a/b;

    .line 1076
    iget-object v3, p0, Lcom/efs/sdk/base/a/h/a/e;->b:Lcom/efs/sdk/base/a/h/a/c;

    invoke-interface {v2, v3, v0}, Lcom/efs/sdk/base/a/h/a/b;->a(Lcom/efs/sdk/base/a/h/a/c;Ljava/lang/Object;)V

    goto :goto_1d

    .line 1081
    :cond_2f
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/a/h/a/b;

    .line 1082
    invoke-interface {v2, v0}, Lcom/efs/sdk/base/a/h/a/b;->result(Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_35

    :catchall_45
    move-exception v1

    const-string v2, "efs.base"

    const-string v3, "efs.util.concurrent"

    .line 2031
    invoke-static {v2, v3, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2087
    iget-object v1, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_53

    :cond_5d
    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/a/h/a/b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/efs/sdk/base/a/h/a/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public run()V
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/h/a/e;->a()Ljava/lang/Object;

    return-void
.end method

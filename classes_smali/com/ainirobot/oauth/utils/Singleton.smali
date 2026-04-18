.class public abstract Lcom/ainirobot/oauth/utils/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ainirobot/oauth/utils/Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 10
    monitor-enter p0

    .line 11
    :try_start_5
    iget-object v0, p0, Lcom/ainirobot/oauth/utils/Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 12
    invoke-virtual {p0}, Lcom/ainirobot/oauth/utils/Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ainirobot/oauth/utils/Singleton;->mInstance:Ljava/lang/Object;

    .line 14
    :cond_f
    monitor-exit p0

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    .line 16
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/ainirobot/oauth/utils/Singleton;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

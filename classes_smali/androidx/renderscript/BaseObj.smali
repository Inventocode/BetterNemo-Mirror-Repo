.class public Landroidx/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:J

.field mRS:Landroidx/renderscript/RenderScript;


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p3}, Landroidx/renderscript/RenderScript;->validate()V

    .line 31
    iput-object p3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    iput-wide p1, p0, Landroidx/renderscript/BaseObj;->mID:J

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    return-void
.end method

.method private helpDestroy()V
    .registers 5

    .line 82
    monitor-enter p0

    .line 83
    :try_start_1
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 85
    iput-boolean v1, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 87
    :goto_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    if-eqz v1, :cond_31

    .line 91
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, v0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 93
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 94
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    iget-wide v2, p0, Landroidx/renderscript/BaseObj;->mID:J

    invoke-virtual {v1, v2, v3}, Landroidx/renderscript/RenderScript;->nObjDestroy(J)V

    .line 96
    :cond_27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    :cond_31
    return-void

    :catchall_32
    move-exception v0

    .line 87
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method checkValid()V
    .registers 6

    .line 71
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    invoke-virtual {p0}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 72
    :cond_f
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 114
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_8

    .line 117
    invoke-direct {p0}, Landroidx/renderscript/BaseObj;->helpDestroy()V

    return-void

    .line 115
    :cond_8
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 147
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 151
    :cond_13
    check-cast p1, Landroidx/renderscript/BaseObj;

    .line 152
    iget-wide v2, p0, Landroidx/renderscript/BaseObj;->mID:J

    iget-wide v4, p1, Landroidx/renderscript/BaseObj;->mID:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroidx/renderscript/BaseObj;->helpDestroy()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getID(Landroidx/renderscript/RenderScript;)J
    .registers 7

    .line 53
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 54
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_29

    .line 57
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    if-eqz p1, :cond_20

    .line 60
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    if-ne p1, v2, :cond_18

    goto :goto_20

    .line 61
    :cond_18
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string v0, "using object with mismatched context."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    return-wide v0

    .line 58
    :cond_21
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Internal error: Object id 0."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_29
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string v0, "using a destroyed object."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 127
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v2, v0

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method setID(J)V
    .registers 8

    .line 37
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 40
    iput-wide p1, p0, Landroidx/renderscript/BaseObj;->mID:J

    return-void

    .line 38
    :cond_b
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Internal Error, reset of object ID."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

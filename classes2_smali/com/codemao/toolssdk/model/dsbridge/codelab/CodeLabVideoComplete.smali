.class public final Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;
.super Ljava/lang/Object;
.source "CodeLabVideoData.kt"


# instance fields
.field private final clickComplete:Z

.field private final videoComplete:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    iput-boolean p2, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;ZZILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-boolean p2, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->copy(ZZ)Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    return v0
.end method

.method public final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    return v0
.end method

.method public final copy(ZZ)Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;-><init>(ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    if-eq v1, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getClickComplete()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    return v0
.end method

.method public final getVideoComplete()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeLabVideoComplete(videoComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->videoComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clickComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoComplete;->clickComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

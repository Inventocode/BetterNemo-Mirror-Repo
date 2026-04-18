.class public final Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;
.super Ljava/lang/Object;
.source "GetBlockCountResult.kt"


# instance fields
.field private final type:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;ZILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->copy(Z)Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    return v0
.end method

.method public final copy(Z)Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;
    .registers 3

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getType()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunnerStageEvent(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RunnerStageEvent;->type:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

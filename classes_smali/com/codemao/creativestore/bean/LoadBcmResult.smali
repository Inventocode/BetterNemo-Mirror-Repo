.class public final Lcom/codemao/creativestore/bean/LoadBcmResult;
.super Ljava/lang/Object;
.source "LoadBcmResult.kt"


# instance fields
.field private final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private final status:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativestore/bean/LoadBcmResult;Ljava/lang/String;ZILjava/lang/Object;)Lcom/codemao/creativestore/bean/LoadBcmResult;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-boolean p2, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativestore/bean/LoadBcmResult;->copy(Ljava/lang/String;Z)Lcom/codemao/creativestore/bean/LoadBcmResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/codemao/creativestore/bean/LoadBcmResult;
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/creativestore/bean/LoadBcmResult;

    invoke-direct {v0, p1, p2}, Lcom/codemao/creativestore/bean/LoadBcmResult;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1b

    instance-of v0, p1, Lcom/codemao/creativestore/bean/LoadBcmResult;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/codemao/creativestore/bean/LoadBcmResult;

    iget-object v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    if-ne v0, p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :cond_11
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadBcmResult(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativestore/bean/LoadBcmResult;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

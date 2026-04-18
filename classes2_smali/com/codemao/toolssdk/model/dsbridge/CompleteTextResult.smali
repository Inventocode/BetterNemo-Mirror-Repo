.class public final Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;
.super Ljava/lang/Object;
.source "CompleteTextEvent.kt"


# instance fields
.field private final message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    .line 36
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;ZLjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->copy(ZLjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuccess()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompleteTextResult(success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

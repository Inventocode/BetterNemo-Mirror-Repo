.class public final Lcom/codemao/toolssdk/constant/ErrorLoadModel;
.super Ljava/lang/Object;
.source "CMTStatus.kt"


# instance fields
.field private final errorCode:I

.field private final errorString:Ljava/lang/String;

.field private final showRetry:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    const-string v0, "errorString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorCode:I

    iput-object p2, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorString:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->showRetry:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    iget v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorCode:I

    iget v3, p1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorCode:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorString:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->showRetry:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->showRetry:Z

    if-eq v1, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getErrorString()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowRetry()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->showRetry:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->showRetry:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :cond_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorLoadModel(errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->showRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

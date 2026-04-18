.class public final Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;
.super Ljava/lang/Object;
.source "CheckWorkSaveEnableResult.kt"


# instance fields
.field private final data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->copy(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;)Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    return-object v0
.end method

.method public final copy(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;)Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;
    .registers 3

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;-><init>(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getData()Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckWorkSaveEnableResponse(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

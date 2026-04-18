.class public final Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;
.super Ljava/lang/Object;
.source "SocketIOEvent.kt"


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    .line 52
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->copy(Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;-><init>(Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getCode()Ljava/lang/Integer;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getData()Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final isIDLE()Z
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_10

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x4c4b407

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isServerBusy()Z
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_10

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x4c4b408

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isSuccess()Z
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketIOUUIDResponse(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOUUIDData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

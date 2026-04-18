.class public final Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;
.super Ljava/lang/Object;
.source "SocketIOEvent.kt"


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final complete_id:Ljava/lang/Integer;

.field private final data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

.field private final prompt_id:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;Ljava/lang/Integer;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    .line 77
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    .line 78
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    .line 79
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;Ljava/lang/Integer;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;Ljava/lang/Integer;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;
    .registers 6

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getCode()Ljava/lang/Integer;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getComplete_id()Ljava/lang/Integer;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getData()Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    return-object v0
.end method

.method public final getPrompt_id()Ljava/lang/Integer;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketIOPromptResponse(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", complete_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->complete_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->data:Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prompt_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOPromptResponse;->prompt_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

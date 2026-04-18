.class public final Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;
.super Ljava/lang/Object;
.source "SocketIOEvent.kt"


# instance fields
.field private final audio_session_id:Ljava/lang/String;

.field private final p_uuid:Ljava/lang/String;

.field private final prompt:Ljava/lang/String;

.field private final textStream:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    .line 122
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 119
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->copy(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;
    .registers 6

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getAudio_session_id()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getP_uuid()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrompt()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextStream()Lorg/json/JSONObject;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketIOEventCommonData(p_uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->p_uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->textStream:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audio_session_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/compat/audiostream/SocketIOEventCommonData;->audio_session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

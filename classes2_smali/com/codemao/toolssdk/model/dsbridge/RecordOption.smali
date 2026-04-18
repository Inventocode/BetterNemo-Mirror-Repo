.class public final Lcom/codemao/toolssdk/model/dsbridge/RecordOption;
.super Ljava/lang/Object;
.source "RecordOption.kt"


# instance fields
.field private final audioType:Ljava/lang/String;

.field private final duration:Ljava/lang/Long;

.field private final sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    .line 15
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/RecordOption;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/RecordOption;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Lcom/codemao/toolssdk/model/dsbridge/RecordOption;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAudioType()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final getAudioTypeSafe()Ljava/lang/String;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->isAudioTypeAmr()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_c
    const-string v0, "aac"

    return-object v0
.end method

.method public final getDuration()Ljava/lang/Long;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSampleRate()Ljava/lang/Integer;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAudioTypeAmr()Z
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    const-string v1, "amr"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    const-string v1, "AMR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordOption(duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->duration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->sampleRate:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

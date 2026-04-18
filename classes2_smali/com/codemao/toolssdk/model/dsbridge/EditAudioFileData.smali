.class public final Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;
.super Ljava/lang/Object;
.source "RecordResult.kt"


# instance fields
.field private final cdnUrl:Ljava/lang/String;

.field private final duration:J

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    .line 48
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object p7, v0

    goto :goto_8

    :cond_7
    move-object p7, p1

    :goto_8
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    move-object v0, p2

    :goto_e
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_14

    const-wide/16 p3, 0x0

    :cond_14
    move-wide v1, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_1b

    const-string p5, "record"

    :cond_1b
    move-object p6, p5

    move-object p1, p0

    move-object p2, p7

    move-object p3, v0

    move-wide p4, v1

    .line 29
    invoke-direct/range {p1 .. p6}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-wide p3, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    :cond_13
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    :cond_1a
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;
    .registers 13

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getCdnUrl()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditAudioFileData(cdnUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->cdnUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

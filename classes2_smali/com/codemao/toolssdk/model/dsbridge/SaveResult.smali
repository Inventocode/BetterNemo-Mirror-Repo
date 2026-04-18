.class public final Lcom/codemao/toolssdk/model/dsbridge/SaveResult;
.super Ljava/lang/Object;
.source "SaveResult.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final bcmVersion:Ljava/lang/String;

.field private final cover:Ljava/lang/String;

.field private final picNeedCheckFileUrl:Ljava/lang/String;

.field private final toolType:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final workId:J

.field private final workName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    .line 16
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/SaveResult;
    .registers 20

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v3, p3

    :goto_11
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v4, p4

    :goto_19
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_20

    iget-object v5, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    goto :goto_21

    :cond_20
    move-object v5, p5

    :goto_21
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_28

    iget-object v6, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    goto :goto_29

    :cond_28
    move-object v6, p6

    :goto_29
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_30

    iget-object v7, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    goto :goto_32

    :cond_30
    move-object/from16 v7, p7

    :goto_32
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_39

    iget-object v8, v0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p8

    :goto_3b
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/SaveResult;
    .registers 19

    new-instance v9, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    move-object v0, v9

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    return v2

    :cond_57
    return v0
.end method

.method public final getBcmVersion()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getPicNeedCheckFileUrl()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getToolType()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkId()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    return-wide v0
.end method

.method public final getWorkName()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    if-nez v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    if-nez v1, :cond_36

    const/4 v1, 0x0

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    if-nez v1, :cond_43

    const/4 v1, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    if-nez v1, :cond_4f

    goto :goto_53

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveResult(workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", workName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->workName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->toolType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", picNeedCheckFileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->picNeedCheckFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bcmVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

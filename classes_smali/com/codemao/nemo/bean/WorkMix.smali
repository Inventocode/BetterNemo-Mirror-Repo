.class public final Lcom/codemao/nemo/bean/WorkMix;
.super Ljava/lang/Object;
.source "RecommendPageResponse.kt"


# instance fields
.field private final collect_times:J

.field private final description:Ljava/lang/String;

.field private final id:J

.field private final like_times:J

.field private final open:J

.field private final parent_id:J

.field private final view_times:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJJJJ)V
    .registers 14

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    .line 59
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    .line 60
    iput-wide p4, p0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    .line 61
    iput-wide p6, p0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    .line 62
    iput-wide p8, p0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    .line 63
    iput-wide p10, p0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    .line 64
    iput-wide p12, p0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/WorkMix;JLjava/lang/String;JJJJJILjava/lang/Object;)Lcom/codemao/nemo/bean/WorkMix;
    .registers 30

    move-object v0, p0

    and-int/lit8 v1, p14, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p14, 0x2

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    goto :goto_12

    :cond_10
    move-object/from16 v3, p3

    :goto_12
    and-int/lit8 v4, p14, 0x4

    if-eqz v4, :cond_19

    iget-wide v4, v0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    goto :goto_1b

    :cond_19
    move-wide/from16 v4, p4

    :goto_1b
    and-int/lit8 v6, p14, 0x8

    if-eqz v6, :cond_22

    iget-wide v6, v0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    goto :goto_24

    :cond_22
    move-wide/from16 v6, p6

    :goto_24
    and-int/lit8 v8, p14, 0x10

    if-eqz v8, :cond_2b

    iget-wide v8, v0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    goto :goto_2d

    :cond_2b
    move-wide/from16 v8, p8

    :goto_2d
    and-int/lit8 v10, p14, 0x20

    if-eqz v10, :cond_34

    iget-wide v10, v0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    goto :goto_36

    :cond_34
    move-wide/from16 v10, p10

    :goto_36
    and-int/lit8 v12, p14, 0x40

    if-eqz v12, :cond_3d

    iget-wide v12, v0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    goto :goto_3f

    :cond_3d
    move-wide/from16 v12, p12

    :goto_3f
    move-wide p1, v1

    move-object/from16 p3, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    invoke-virtual/range {p0 .. p13}, Lcom/codemao/nemo/bean/WorkMix;->copy(JLjava/lang/String;JJJJJ)Lcom/codemao/nemo/bean/WorkMix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    return-wide v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    return-wide v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    return-wide v0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    return-wide v0
.end method

.method public final component7()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;JJJJJ)Lcom/codemao/nemo/bean/WorkMix;
    .registers 29

    new-instance v14, Lcom/codemao/nemo/bean/WorkMix;

    move-object v0, v14

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/codemao/nemo/bean/WorkMix;-><init>(JLjava/lang/String;JJJJJ)V

    return-object v14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/WorkMix;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/WorkMix;

    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkMix;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    :cond_32
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkMix;->open:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4d

    return v2

    :cond_4d
    return v0
.end method

.method public final getCollect_times()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    return-wide v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    return-wide v0
.end method

.method public final getLike_times()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    return-wide v0
.end method

.method public final getOpen()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    return-wide v0
.end method

.method public final getParent_id()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    return-wide v0
.end method

.method public final getView_times()J
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkMix(collect_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->collect_times:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkMix;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", like_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->like_times:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->open:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", parent_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->parent_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", view_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkMix;->view_times:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

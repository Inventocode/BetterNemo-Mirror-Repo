.class public final Lcom/codemao/nemo/bean/WorkBase;
.super Ljava/lang/Object;
.source "RecommendPageResponse.kt"


# instance fields
.field private final id:J

.field private final name:Ljava/lang/String;

.field private final preview_url:Ljava/lang/String;

.field private final publish_time:J

.field private final type:Ljava/lang/String;

.field private final user_id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .registers 10

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    .line 44
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    .line 46
    iput-wide p5, p0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    .line 47
    iput-object p7, p0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    .line 48
    iput-wide p8, p0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/WorkBase;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JILjava/lang/Object;)Lcom/codemao/nemo/bean/WorkBase;
    .registers 22

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v3, p3

    :goto_11
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v4, p4

    :goto_19
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_20

    iget-wide v5, v0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    goto :goto_21

    :cond_20
    move-wide v5, p5

    :goto_21
    and-int/lit8 v7, p10, 0x10

    if-eqz v7, :cond_28

    iget-object v7, v0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    move-object/from16 v7, p7

    :goto_2a
    and-int/lit8 v8, p10, 0x20

    if-eqz v8, :cond_31

    iget-wide v8, v0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    goto :goto_33

    :cond_31
    move-wide/from16 v8, p8

    :goto_33
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move-object/from16 p7, v7

    move-wide/from16 p8, v8

    invoke-virtual/range {p0 .. p9}, Lcom/codemao/nemo/bean/WorkBase;->copy(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/codemao/nemo/bean/WorkBase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/codemao/nemo/bean/WorkBase;
    .registers 21

    new-instance v10, Lcom/codemao/nemo/bean/WorkBase;

    move-object v0, v10

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/codemao/nemo/bean/WorkBase;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/WorkBase;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/WorkBase;

    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkBase;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_48

    return v2

    :cond_48
    return v0
.end method

.method public final getId()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreview_url()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublish_time()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_id()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    if-nez v1, :cond_31

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkBase(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkBase;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publish_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkBase;->publish_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkBase;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkBase;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

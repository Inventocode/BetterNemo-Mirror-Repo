.class public final Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;
.super Ljava/lang/Object;
.source "WorkPublishKnInfoResponse.kt"


# instance fields
.field private bcm_version:Ljava/lang/String;

.field private bcmc_url:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fork_enable:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private if_default_cover:Ljava/lang/Integer;

.field private include_ai_resource:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private preview_url:Ljava/lang/String;

.field private published_time:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 12

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    .line 7
    iput-object p4, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    .line 8
    iput-object p5, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    .line 9
    iput-object p6, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    .line 12
    iput-object p9, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    .line 14
    iput-object p11, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    goto :goto_2d

    :cond_2b
    move-object/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget-object v7, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    goto :goto_36

    :cond_34
    move-object/from16 v7, p6

    :goto_36
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3d

    iget-object v8, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    goto :goto_3f

    :cond_3d
    move-object/from16 v8, p7

    :goto_3f
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_46

    iget-object v9, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    goto :goto_48

    :cond_46
    move-object/from16 v9, p8

    :goto_48
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    iget-object v10, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    goto :goto_51

    :cond_4f
    move-object/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_58

    iget-object v11, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    move-object/from16 v11, p10

    :goto_5a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_61

    iget-object v1, v0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    goto :goto_63

    :cond_61
    move-object/from16 v1, p11

    :goto_63
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final closeSource()Z
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    :goto_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;
    .registers 25

    new-instance v12, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    return v2

    :cond_85
    return v0
.end method

.method public final getBcm_version()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public final getBcmc_url()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFork_enable()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()Ljava/lang/Long;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIf_default_cover()Ljava/lang/Integer;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInclude_ai_resource()Ljava/lang/Integer;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperation()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreview_url()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublished_time()Ljava/lang/Long;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    if-nez v2, :cond_61

    const/4 v2, 0x0

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    if-nez v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    if-nez v2, :cond_7b

    const/4 v2, 0x0

    goto :goto_7f

    :cond_7b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    if-nez v2, :cond_87

    goto :goto_8b

    :cond_87
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8b
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAITag()Z
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

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

.method public final openFans()Z
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final openSource()Z
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

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

.method public final setBcm_version(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    return-void
.end method

.method public final setBcmc_url(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public final setFork_enable(Ljava/lang/Integer;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    return-void
.end method

.method public final setId(Ljava/lang/Long;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    return-void
.end method

.method public final setIf_default_cover(Ljava/lang/Integer;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    return-void
.end method

.method public final setInclude_ai_resource(Ljava/lang/Integer;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOperation(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    return-void
.end method

.method public final setPreview_url(Ljava/lang/String;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    return-void
.end method

.method public final setPublished_time(Ljava/lang/Long;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkPublishKnInfoResponse(preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fork_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->fork_enable:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", if_default_cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->if_default_cover:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", published_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->published_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bcm_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcm_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bcmc_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->bcmc_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", include_ai_resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;->include_ai_resource:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

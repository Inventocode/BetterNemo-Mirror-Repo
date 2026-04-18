.class public final Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;
.super Ljava/lang/Object;
.source "RecommendViewModel.kt"


# instance fields
.field private final imageUrl:Ljava/lang/String;

.field private final labelColor:I

.field private final labelShadowColor:I

.field private final labelStr:Ljava/lang/String;

.field private final praisedCount:J

.field private final readCount:J

.field private final userIconUrl:Ljava/lang/String;

.field private final userId:J

.field private final userName:Ljava/lang/String;

.field private final workId:J

.field private final workName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJJ)V
    .registers 16

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    .line 35
    iput-wide p5, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    .line 36
    iput-wide p7, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    .line 37
    iput-object p9, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    .line 38
    iput p10, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    .line 39
    iput p11, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    .line 40
    iput-wide p12, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    .line 41
    iput-wide p14, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJJILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;
    .registers 33

    move-object v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    goto :goto_c

    :cond_a
    move-object/from16 v2, p1

    :goto_c
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    goto :goto_15

    :cond_13
    move-object/from16 v3, p2

    :goto_15
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    goto :goto_1e

    :cond_1c
    move-object/from16 v4, p3

    :goto_1e
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    goto :goto_27

    :cond_25
    move-object/from16 v5, p4

    :goto_27
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2e

    iget-wide v6, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    goto :goto_30

    :cond_2e
    move-wide/from16 v6, p5

    :goto_30
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_37

    iget-wide v8, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    goto :goto_39

    :cond_37
    move-wide/from16 v8, p7

    :goto_39
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_40

    iget-object v10, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    goto :goto_42

    :cond_40
    move-object/from16 v10, p9

    :goto_42
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_49

    iget v11, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    goto :goto_4b

    :cond_49
    move/from16 v11, p10

    :goto_4b
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_52

    iget v12, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    goto :goto_54

    :cond_52
    move/from16 v12, p11

    :goto_54
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5b

    iget-wide v13, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    goto :goto_5d

    :cond_5b
    move-wide/from16 v13, p12

    :goto_5d
    and-int/lit16 v1, v1, 0x400

    move-wide/from16 p12, v13

    if-eqz v1, :cond_66

    iget-wide v13, v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    goto :goto_68

    :cond_66
    move-wide/from16 v13, p14

    :goto_68
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-wide/from16 p14, v13

    invoke-virtual/range {p0 .. p15}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJJ)Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    return-wide v0
.end method

.method public final component11()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    return-wide v0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    return v0
.end method

.method public final component9()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJJ)Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;
    .registers 33

    new-instance v16, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJJ)V

    return-object v16
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_41

    return v2

    :cond_41
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    iget v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    if-eq v1, v3, :cond_5c

    return v2

    :cond_5c
    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    iget v3, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    if-eq v1, v3, :cond_63

    return v2

    :cond_63
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6c

    return v2

    :cond_6c
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_75

    return v2

    :cond_75
    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabelColor()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    return v0
.end method

.method public final getLabelShadowColor()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    return v0
.end method

.method public final getLabelStr()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getPraisedCount()J
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    return-wide v0
.end method

.method public final getReadCount()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    return-wide v0
.end method

.method public final getUserIconUrl()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    return-wide v0
.end method

.method public final getUserName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkId()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    return-wide v0
.end method

.method public final getWorkName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    if-nez v2, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkViewModel(imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", workName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", readCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->readCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", praisedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->praisedCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", labelStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelShadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->labelShadowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

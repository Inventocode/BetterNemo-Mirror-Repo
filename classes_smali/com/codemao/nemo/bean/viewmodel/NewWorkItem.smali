.class public final Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;
.super Ljava/lang/Object;
.source "RecommendViewModel.kt"


# instance fields
.field private final dateStr:Ljava/lang/String;

.field private final imgUrl:Ljava/lang/String;

.field private final isReworked:Z

.field private final labelColor:I

.field private final labelStr:Ljava/lang/String;

.field private final userName:Ljava/lang/String;

.field private final workId:J

.field private final workName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V
    .registers 10

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    .line 59
    iput p6, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    .line 60
    iput-boolean p7, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    .line 61
    iput-wide p8, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;
    .registers 23

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget v7, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    goto :goto_35

    :cond_33
    move/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget-boolean v8, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    goto :goto_3e

    :cond_3c
    move/from16 v8, p7

    :goto_3e
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_45

    iget-wide v9, v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    goto :goto_47

    :cond_45
    move-wide/from16 v9, p8

    :goto_47
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-wide/from16 p8, v9

    invoke-virtual/range {p0 .. p9}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    return v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    return v0
.end method

.method public final component8()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;
    .registers 21

    new-instance v10, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    iget v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget-boolean v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    iget-boolean v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5a

    return v2

    :cond_5a
    return v0
.end method

.method public final getDateStr()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getImgUrl()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabelColor()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    return v0
.end method

.method public final getLabelStr()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkId()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    return-wide v0
.end method

.method public final getWorkName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    if-nez v2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isReworked()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewWorkItem(workName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dateStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->dateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->labelColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isReworked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

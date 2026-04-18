.class public final Lcom/codemao/nemo/bean/WorkPublishStatusResponse;
.super Ljava/lang/Object;
.source "CheckPicturesSyncResponse.kt"


# instance fields
.field private check_status:Ljava/lang/Integer;

.field private final has_display_check_result:Ljava/lang/Integer;

.field private final pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private published_status:Ljava/lang/Integer;

.field private final status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    .line 16
    iput-object p2, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    .line 17
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    .line 18
    iput-object p4, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    .line 19
    iput-object p5, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/WorkPublishStatusResponse;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/codemao/nemo/bean/WorkPublishStatusResponse;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)Lcom/codemao/nemo/bean/WorkPublishStatusResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;"
        }
    .end annotation

    new-instance v6, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V

    return-object v6
.end method

.method public final couldPublish()Z
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_19

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    const/4 v2, 0x2

    if-nez v0, :cond_12

    goto :goto_19

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getCheck_status()Ljava/lang/Integer;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHas_display_check_result()Ljava/lang/Integer;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPictures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public final getPublished_status()Ljava/lang/Integer;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    if-nez v2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    return v0
.end method

.method public final isInReview()Z
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_18

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_18

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public final isUnpublished()Z
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_18

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public final setCheck_status(Ljava/lang/Integer;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    return-void
.end method

.method public final setPublished_status(Ljava/lang/Integer;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkPublishStatusResponse(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", check_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->check_status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", published_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->published_status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pictures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->pictures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", has_display_check_result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->has_display_check_result:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

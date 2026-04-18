.class public final Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;
.super Ljava/lang/Object;
.source "CompleteTextEvent.kt"


# instance fields
.field private final actorIconUrl:Ljava/lang/String;

.field private final contentText:Ljava/lang/String;

.field private final hintText:Ljava/lang/String;

.field private final maxTextLength:I

.field private final notSelectAll:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private final typeArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    .line 41
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    .line 46
    iput-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p2

    :goto_8
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_e

    move-object v2, v1

    goto :goto_f

    :cond_e
    move-object v2, p3

    :goto_f
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_15

    move-object v3, v1

    goto :goto_16

    :cond_15
    move-object v3, p4

    :goto_16
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_1d

    const-string v4, "variable"

    goto :goto_1e

    :cond_1d
    move-object v4, p5

    :goto_1e
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_23

    goto :goto_24

    :cond_23
    move-object v1, p6

    :goto_24
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_2b

    .line 46
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2c

    :cond_2b
    move-object v5, p7

    :goto_2c
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v1

    move-object p9, v5

    .line 39
    invoke-direct/range {p2 .. p9}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    :cond_c
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    :cond_28
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    :cond_2f
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;"
        }
    .end annotation

    new-instance v8, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    move-object v0, v8

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    return v2

    :cond_55
    return v0
.end method

.method public final getActorIconUrl()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentText()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public final getHintText()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxTextLength()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    return v0
.end method

.method public final getNotSelectAll()Ljava/lang/Boolean;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeArray()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    if-nez v1, :cond_25

    const/4 v1, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    if-nez v1, :cond_3f

    const/4 v1, 0x0

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_43
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    if-nez v1, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4f
    add-int/2addr v0, v2

    return v0
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextInputOptions(maxTextLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->maxTextLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->contentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actorIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->actorIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->typeArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notSelectAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->notSelectAll:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

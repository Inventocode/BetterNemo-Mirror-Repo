.class public final Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;
.super Ljava/lang/Object;
.source "CompleteTextEvent.kt"


# instance fields
.field private final currentCount:Ljava/lang/Integer;

.field private enable:Ljava/lang/Boolean;

.field private final imageUrl:Ljava/lang/String;

.field private isEnable:Z

.field private isSelected:Z

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final totalCount:Ljava/lang/Integer;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;)V
    .registers 10

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    .line 83
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    .line 84
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    .line 85
    iput-boolean p7, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    .line 86
    iput-boolean p8, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    .line 87
    iput-object p9, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const/4 v9, 0x0

    goto :goto_b

    :cond_9
    move/from16 v9, p7

    :goto_b
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_14

    :cond_12
    move/from16 v10, p8

    :goto_14
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p9

    .line 78
    invoke-direct/range {v2 .. v11}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-boolean v8, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    goto :goto_3d

    :cond_3b
    move/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-boolean v9, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    goto :goto_46

    :cond_44
    move/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    goto :goto_4f

    :cond_4d
    move-object/from16 v1, p9

    :goto_4f
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;)Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    move-result-object v0

    return-object v0
.end method

.method private static final getTileDisplay$safeValue(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;)Ljava/lang/String;
    .registers 9

    .line 109
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_23

    const-string v1, ":"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_23

    .line 111
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 114
    :cond_23
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    if-eqz v0, :cond_44

    const-string v1, "："

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_44

    .line 116
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 119
    :cond_44
    iget-object p0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    if-nez p0, :cond_4a

    const-string p0, ""

    :cond_4a
    return-object p0
.end method


# virtual methods
.method public final amountLimited()Z
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    if-nez v0, :cond_a

    goto :goto_21

    :cond_a
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 96
    :goto_14
    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-lt v0, v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    :goto_21
    return v1
.end method

.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    return v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    return v0
.end method

.method public final component9()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;)Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;
    .registers 21

    new-instance v10, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZZLjava/lang/Boolean;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    if-eq v1, v3, :cond_55

    return v2

    :cond_55
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    if-eq v1, v3, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    return v2

    :cond_67
    return v0
.end method

.method public final getAmountTips()Ljava/lang/String;
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    const-string v0, ""

    return-object v0
.end method

.method public final getCurrentCount()Ljava/lang/Integer;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEnable()Ljava/lang/Boolean;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTileDisplay()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-static {p0}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getTileDisplay$safeValue(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalCount()Ljava/lang/Integer;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    :cond_54
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    if-eqz v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v2

    :goto_5d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    if-nez v2, :cond_65

    goto :goto_69

    :cond_65
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_69
    add-int/2addr v0, v1

    return v0
.end method

.method public final initDefaultValue()V
    .registers 2

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    return-void
.end method

.method public final isEnable()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    return v0
.end method

.method public final isSelected()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    return v0
.end method

.method public final setEnable(Ljava/lang/Boolean;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnable(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    return-void
.end method

.method public final setSelected(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextInputOptionsCheckBox(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->totalCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->currentCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

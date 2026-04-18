.class public final Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;
.super Ljava/lang/Object;
.source "CppExecuteRegExpData.kt"


# instance fields
.field private final codeSnapshot:Ljava/lang/String;

.field private final isEmptyRegExp:Ljava/lang/Boolean;

.field private final isFileEmpty:Ljava/lang/Boolean;

.field private final isMatchError:Ljava/lang/Boolean;

.field private final matchErrorText:Ljava/lang/String;

.field private final matchResult:Ljava/lang/String;

.field private final regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

.field private final request_type:Ljava/lang/Integer;

.field private final skip_allow:Ljava/lang/Boolean;

.field private final totalMatchResult:Ljava/lang/Boolean;

.field private final totalMatchResultText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 12

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    .line 11
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    .line 13
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    .line 14
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    .line 17
    iput-object p8, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    .line 18
    iput-object p9, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    .line 19
    iput-object p10, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    .line 20
    iput-object p11, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;Ljava/lang/Boolean;Ljava/lang/String;[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    move-object/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget-object v7, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    goto :goto_36

    :cond_34
    move-object/from16 v7, p6

    :goto_36
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3d

    iget-object v8, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    goto :goto_3f

    :cond_3d
    move-object/from16 v8, p7

    :goto_3f
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_46

    iget-object v9, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    goto :goto_48

    :cond_46
    move-object/from16 v9, p8

    :goto_48
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    iget-object v10, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    goto :goto_51

    :cond_4f
    move-object/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_58

    iget-object v11, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    goto :goto_5a

    :cond_58
    move-object/from16 v11, p10

    :goto_5a
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_61

    iget-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

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

    invoke-virtual/range {p0 .. p11}, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->copy(Ljava/lang/Boolean;Ljava/lang/String;[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/String;[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;
    .registers 25

    new-instance v12, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;

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

    invoke-direct/range {v0 .. v11}, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;-><init>(Ljava/lang/Boolean;Ljava/lang/String;[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    return v2

    :cond_85
    return v0
.end method

.method public final getCodeSnapshot()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchErrorText()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchResult()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegExpResultList()[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    return-object v0
.end method

.method public final getRequest_type()Ljava/lang/Integer;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSkip_allow()Ljava/lang/Boolean;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTotalMatchResult()Ljava/lang/Boolean;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTotalMatchResultText()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    if-nez v2, :cond_61

    const/4 v2, 0x0

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    if-nez v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    if-nez v2, :cond_7b

    const/4 v2, 0x0

    goto :goto_7f

    :cond_7b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    if-nez v2, :cond_87

    goto :goto_8b

    :cond_87
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8b
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmptyRegExp()Ljava/lang/Boolean;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isFileEmpty()Ljava/lang/Boolean;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMatchError()Ljava/lang/Boolean;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CppExecuteRegExpRspData(isFileEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isFileEmpty:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codeSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->codeSnapshot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regExpResultList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->regExpResultList:[Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpResultItem;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalMatchResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResult:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalMatchResultText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->totalMatchResultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", matchResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skip_allow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->skip_allow:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->request_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEmptyRegExp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isEmptyRegExp:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMatchError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->isMatchError:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchErrorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpRspData;->matchErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

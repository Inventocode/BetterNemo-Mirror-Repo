.class public final Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.kt"


# instance fields
.field private final androidId:Ljava/lang/String;

.field private final appName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final board:Ljava/lang/String;

.field private final brand:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final os:Ljava/lang/String;

.field private final osVersion:Ljava/lang/String;

.field private final product:Ljava/lang/String;

.field private final serial:Ljava/lang/String;

.field private webviewUA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 17

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 14
    iput-object p9, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    .line 15
    iput-object p10, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    .line 16
    iput-object p11, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    .line 17
    iput-object p12, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 18
    iput-object p13, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 30

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    .line 6
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_11

    .line 7
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_13

    :cond_11
    move-object/from16 v2, p2

    :goto_13
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1a

    const-string v3, "Android"

    goto :goto_1c

    :cond_1a
    move-object/from16 v3, p3

    :goto_1c
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_23

    .line 9
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_25

    :cond_23
    move-object/from16 v4, p4

    :goto_25
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2c

    .line 10
    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    move-object/from16 v5, p5

    :goto_2e
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_35

    .line 11
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_37

    :cond_35
    move-object/from16 v6, p6

    :goto_37
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_3e

    .line 12
    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_40

    :cond_3e
    move-object/from16 v7, p7

    :goto_40
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_47

    .line 13
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_49

    :cond_47
    move-object/from16 v8, p8

    :goto_49
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_50

    .line 14
    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_52

    :cond_50
    move-object/from16 v9, p9

    :goto_52
    and-int/lit16 v10, v0, 0x200

    const/4 v11, 0x0

    if-eqz v10, :cond_59

    move-object v10, v11

    goto :goto_5b

    :cond_59
    move-object/from16 v10, p10

    :goto_5b
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_61

    move-object v12, v11

    goto :goto_63

    :cond_61
    move-object/from16 v12, p11

    :goto_63
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_69

    move-object v13, v11

    goto :goto_6b

    :cond_69
    move-object/from16 v13, p12

    :goto_6b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_70

    goto :goto_72

    :cond_70
    move-object/from16 v11, p13

    :goto_72
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v11

    .line 5
    invoke-direct/range {p1 .. p14}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;
    .registers 30

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    goto :goto_14

    :cond_12
    move-object/from16 v3, p2

    :goto_14
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    goto :goto_1d

    :cond_1b
    move-object/from16 v4, p3

    :goto_1d
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    goto :goto_26

    :cond_24
    move-object/from16 v5, p4

    :goto_26
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2d

    iget-object v6, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    goto :goto_2f

    :cond_2d
    move-object/from16 v6, p5

    :goto_2f
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_36

    iget-object v7, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    goto :goto_38

    :cond_36
    move-object/from16 v7, p6

    :goto_38
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3f

    iget-object v8, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    goto :goto_41

    :cond_3f
    move-object/from16 v8, p7

    :goto_41
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_48

    iget-object v9, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    goto :goto_4a

    :cond_48
    move-object/from16 v9, p8

    :goto_4a
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_51

    iget-object v10, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    goto :goto_53

    :cond_51
    move-object/from16 v10, p9

    :goto_53
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5a

    iget-object v11, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    goto :goto_5c

    :cond_5a
    move-object/from16 v11, p10

    :goto_5c
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_63

    iget-object v12, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    goto :goto_65

    :cond_63
    move-object/from16 v12, p11

    :goto_65
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6c

    iget-object v13, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    goto :goto_6e

    :cond_6c
    move-object/from16 v13, p12

    :goto_6e
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_75

    iget-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    goto :goto_77

    :cond_75
    move-object/from16 v1, p13

    :goto_77
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;
    .registers 29

    new-instance v14, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    return v2

    :cond_9b
    return v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getBoard()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getProduct()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerial()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebviewUA()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    if-nez v2, :cond_61

    const/4 v2, 0x0

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    if-nez v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    if-nez v2, :cond_7b

    const/4 v2, 0x0

    goto :goto_7f

    :cond_7b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    if-nez v2, :cond_88

    const/4 v2, 0x0

    goto :goto_8c

    :cond_88
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    if-nez v2, :cond_95

    const/4 v2, 0x0

    goto :goto_99

    :cond_95
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    if-nez v2, :cond_a1

    goto :goto_a5

    :cond_a1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a5
    add-int/2addr v0, v1

    return v0
.end method

.method public final setUA(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    return-void
.end method

.method public final setWebviewUA(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfo(brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", board="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->board:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webviewUA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->webviewUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

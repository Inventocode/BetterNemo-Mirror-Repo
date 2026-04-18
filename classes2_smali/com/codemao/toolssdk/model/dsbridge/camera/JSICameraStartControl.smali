.class public final Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;
.super Ljava/lang/Object;
.source "JSICameraData.kt"


# instance fields
.field private final closeRight:Ljava/lang/Float;

.field private final closeTop:Ljava/lang/Float;

.field private final h:Ljava/lang/Float;

.field private final maskHorizontal:Ljava/lang/Float;

.field private final maskVertical:Ljava/lang/Float;

.field private final radius:Ljava/lang/Float;

.field private final textBottom:Ljava/lang/Float;

.field private final w:Ljava/lang/Float;

.field private final x:Ljava/lang/Float;

.field private final y:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 11

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    .line 9
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    .line 10
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    .line 11
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    .line 12
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    .line 13
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    .line 14
    iput-object p7, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    .line 15
    iput-object p8, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    .line 16
    iput-object p9, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    .line 17
    iput-object p10, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget-object v7, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    goto :goto_35

    :cond_33
    move-object/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget-object v8, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    goto :goto_3e

    :cond_3c
    move-object/from16 v8, p7

    :goto_3e
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_45

    iget-object v9, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    goto :goto_47

    :cond_45
    move-object/from16 v9, p8

    :goto_47
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4e

    iget-object v10, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p9

    :goto_50
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget-object v1, v0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    goto :goto_59

    :cond_57
    move-object/from16 v1, p10

    :goto_59
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->copy(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    return-object v0
.end method

.method public final component10()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    return-object v0
.end method

.method public final component2()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    return-object v0
.end method

.method public final component3()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public final component4()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    return-object v0
.end method

.method public final component5()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    return-object v0
.end method

.method public final component6()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    return-object v0
.end method

.method public final component7()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    return-object v0
.end method

.method public final component8()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    return-object v0
.end method

.method public final component9()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;
    .registers 23

    new-instance v11, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v11
.end method

.method public final dp2px(Landroid/content/Context;F)I
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    return v2

    :cond_7a
    return v0
.end method

.method public final getCloseRight()Ljava/lang/Float;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCloseTop()Ljava/lang/Float;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    return-object v0
.end method

.method public final getFrameLayoutParams(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getWidthPx(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getHeightPx(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getLeftMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getTopMargin(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public final getH()Ljava/lang/Float;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public final getHeightPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_10

    :cond_e
    const/high16 v0, 0x43840000  # 264.0f

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getLeftMargin(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_10

    :cond_e
    const/high16 v0, 0x43500000  # 208.0f

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getMaskHorizontal()Ljava/lang/Float;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMaskVertical()Ljava/lang/Float;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    return-object v0
.end method

.method public final getOverlayRectF(Landroid/content/Context;)Landroid/graphics/RectF;
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/4 v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 50
    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    add-float/2addr v3, v2

    invoke-virtual {p0, p1, v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 51
    iget-object v4, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    iget-object v5, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    :goto_3c
    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    invoke-virtual {p0, p1, v4}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 52
    iget-object v5, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_4d

    :cond_4c
    const/4 v5, 0x0

    :goto_4d
    iget-object v6, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    if-eqz v6, :cond_55

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_55
    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    invoke-virtual {p0, p1, v5}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public final getOverlayRectFStroke(Landroid/content/Context;)Landroid/graphics/RectF;
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 58
    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {p0, p1, v2}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 59
    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    iget-object v4, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    sub-float/2addr v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 60
    iget-object v4, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :goto_48
    iget-object v5, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_50
    sub-float/2addr v4, v1

    invoke-virtual {p0, p1, v4}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public final getRadius()Ljava/lang/Float;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    return-object v0
.end method

.method public final getStrokeRadius(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getTextBottom()Ljava/lang/Float;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    return-object v0
.end method

.method public final getTopMargin(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_10

    :cond_e
    const/high16 v0, 0x41900000  # 18.0f

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getW()Ljava/lang/Float;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    return-object v0
.end method

.method public final getWidthPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_10

    :cond_e
    const/high16 v0, 0x43a50000  # 330.0f

    :goto_10
    invoke-virtual {p0, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getX()Ljava/lang/Float;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    return-object v0
.end method

.method public final getY()Ljava/lang/Float;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    if-nez v2, :cond_61

    const/4 v2, 0x0

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    if-nez v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    if-nez v2, :cond_7a

    goto :goto_7e

    :cond_7a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSICameraStartControl(closeRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeRight:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closeTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->closeTop:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maskHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskHorizontal:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maskVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->maskVertical:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->radius:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->textBottom:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->w:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->x:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->y:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

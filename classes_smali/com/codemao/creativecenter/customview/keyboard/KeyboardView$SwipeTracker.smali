.class Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1406
    iput-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastX:[F

    new-array v1, v0, [F

    .line 1407
    iput-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastY:[F

    new-array v0, v0, [J

    .line 1408
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;)V
    .registers 2

    .line 1401
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .registers 15

    .line 1430
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    if-ge v3, v6, :cond_1f

    .line 1432
    aget-wide v7, v0, v3

    cmp-long v9, v7, v4

    if-nez v9, :cond_11

    goto :goto_1f

    .line 1434
    :cond_11
    aget-wide v4, v0, v3

    const-wide/16 v6, 0xc8

    sub-long v6, p3, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_1c

    move v1, v3

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1f
    :goto_1f
    if-ne v3, v6, :cond_24

    if-gez v1, :cond_24

    const/4 v1, 0x0

    :cond_24
    if-ne v1, v3, :cond_28

    add-int/lit8 v1, v1, -0x1

    .line 1442
    :cond_28
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1443
    iget-object v8, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastY:[F

    if-ltz v1, :cond_3e

    add-int/lit8 v9, v1, 0x1

    rsub-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    .line 1447
    invoke-static {v7, v9, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1448
    invoke-static {v8, v9, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1449
    invoke-static {v0, v9, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v9

    .line 1452
    :cond_3e
    aput p1, v7, v3

    .line 1453
    aput p2, v8, v3

    .line 1454
    aput-wide p3, v0, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_4a

    .line 1457
    aput-wide v4, v0, v3

    :cond_4a
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 10

    .line 1418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1d

    .line 1421
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    .line 1422
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    .line 1421
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1424
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    return-void
.end method

.method public clear()V
    .registers 5

    .line 1414
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 1462
    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1466
    iget-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1467
    iget-object v3, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1468
    iget-object v4, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v5, 0x0

    .line 1470
    aget v6, v2, v5

    .line 1471
    aget v7, v3, v5

    .line 1472
    aget-wide v8, v4, v5

    :goto_11
    const/4 v10, 0x4

    if-ge v5, v10, :cond_20

    .line 1477
    aget-wide v10, v4, v5

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_20
    :goto_20
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_23
    if-ge v10, v5, :cond_5f

    .line 1484
    aget-wide v14, v4, v10

    sub-long/2addr v14, v8

    long-to-int v15, v14

    if-nez v15, :cond_32

    move/from16 v11, p1

    move-object/from16 v17, v2

    const/16 v16, 0x0

    goto :goto_5a

    .line 1486
    :cond_32
    aget v14, v2, v10

    sub-float/2addr v14, v6

    int-to-float v15, v15

    div-float/2addr v14, v15

    move/from16 v11, p1

    move-object/from16 v17, v2

    int-to-float v2, v11

    mul-float v14, v14, v2

    const/high16 v18, 0x3f000000  # 0.5f

    const/16 v16, 0x0

    cmpl-float v19, v12, v16

    if-nez v19, :cond_48

    move v12, v14

    goto :goto_4b

    :cond_48
    add-float/2addr v12, v14

    mul-float v12, v12, v18

    .line 1491
    :goto_4b
    aget v14, v3, v10

    sub-float/2addr v14, v7

    div-float/2addr v14, v15

    mul-float v14, v14, v2

    cmpl-float v2, v13, v16

    if-nez v2, :cond_57

    move v13, v14

    goto :goto_5a

    :cond_57
    add-float/2addr v13, v14

    mul-float v13, v13, v18

    :goto_5a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    goto :goto_23

    :cond_5f
    const/16 v16, 0x0

    cmpg-float v2, v12, v16

    if-gez v2, :cond_6b

    neg-float v2, v1

    .line 1496
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_6f

    .line 1497
    :cond_6b
    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_6f
    iput v2, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mXVelocity:F

    cmpg-float v2, v13, v16

    if-gez v2, :cond_7b

    neg-float v1, v1

    .line 1498
    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_7f

    .line 1499
    :cond_7b
    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_7f
    iput v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mYVelocity:F

    return-void
.end method

.method public getXVelocity()F
    .registers 2

    .line 1503
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    .line 1507
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method

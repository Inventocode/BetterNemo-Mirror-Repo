.class public Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    }
.end annotation


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    const/high16 v1, 0x3f000000  # 0.5f

    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 63
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    const/4 v2, 0x2

    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 66
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 67
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 71
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 79
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    return p0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    return p0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    return p0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    return p0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    return p0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    return p0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    return p0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    return p0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    return p0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    return p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 1

    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    return p0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    return p0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    return p0
.end method

.method private createAlignedConstraints(Z)V
    .registers 13

    .line 1293
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_121

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_121

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_e

    goto/16 :goto_121

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1299
    :goto_10
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v1, v2, :cond_1e

    .line 1300
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 1301
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1304
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    .line 1305
    aget v1, v1, v3

    const/4 v4, 0x0

    .line 1308
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    const/4 v6, 0x0

    :goto_29
    const/16 v7, 0x8

    if-ge v6, v2, :cond_84

    if-eqz p1, :cond_38

    sub-int v5, v2, v6

    sub-int/2addr v5, v3

    const/high16 v8, 0x3f800000  # 1.0f

    .line 1313
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    sub-float/2addr v8, v9

    goto :goto_3a

    :cond_38
    move v8, v5

    move v5, v6

    .line 1315
    :goto_3a
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v5, v9, v5

    if-eqz v5, :cond_80

    .line 1316
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-ne v9, v7, :cond_47

    goto :goto_80

    :cond_47
    if-nez v6, :cond_5c

    .line 1320
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v5, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1321
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1322
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_5c
    add-int/lit8 v7, v2, -0x1

    if-ne v6, v7, :cond_6b

    .line 1325
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v10

    invoke-virtual {v5, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_6b
    if-lez v6, :cond_7f

    if-eqz v4, :cond_7f

    .line 1328
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v5, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1329
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4, v7, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_7f
    move-object v4, v5

    :cond_80
    :goto_80
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_29

    :cond_84
    const/4 p1, 0x0

    :goto_85
    if-ge p1, v1, :cond_d2

    .line 1334
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v5, v5, p1

    if-eqz v5, :cond_cf

    .line 1335
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v7, :cond_94

    goto :goto_cf

    :cond_94
    if-nez p1, :cond_ab

    .line 1339
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {v5, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1340
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1341
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_ab
    add-int/lit8 v6, v1, -0x1

    if-ne p1, v6, :cond_ba

    .line 1344
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_ba
    if-lez p1, :cond_ce

    if-eqz v4, :cond_ce

    .line 1347
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v5, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1348
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_ce
    move-object v4, v5

    :cond_cf
    :goto_cf
    add-int/lit8 p1, p1, 0x1

    goto :goto_85

    :cond_d2
    const/4 p1, 0x0

    :goto_d3
    if-ge p1, v2, :cond_121

    const/4 v4, 0x0

    :goto_d6
    if-ge v4, v1, :cond_11e

    mul-int v5, v4, v2

    add-int/2addr v5, p1

    .line 1356
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-ne v6, v3, :cond_e2

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    .line 1359
    :cond_e2
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    array-length v8, v6

    if-lt v5, v8, :cond_e8

    goto :goto_11b

    .line 1362
    :cond_e8
    aget-object v5, v6, v5

    if-eqz v5, :cond_11b

    .line 1363
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v7, :cond_f3

    goto :goto_11b

    .line 1366
    :cond_f3
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v6, v6, p1

    .line 1367
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v8, v8, v4

    if-eq v5, v6, :cond_10b

    .line 1369
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1370
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_10b
    if-eq v5, v8, :cond_11b

    .line 1373
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1374
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_11b
    :goto_11b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d6

    :cond_11e
    add-int/lit8 p1, p1, 0x1

    goto :goto_d3

    :cond_121
    :goto_121
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 207
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_4d

    .line 208
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_11

    return v0

    :cond_11
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_35

    .line 211
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 212
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_34

    .line 213
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_34
    return p2

    :cond_35
    if-ne v1, v2, :cond_3c

    .line 218
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1

    :cond_3c
    const/4 p2, 0x3

    if-ne v1, p2, :cond_4d

    .line 220
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 223
    :cond_4d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 184
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_4d

    .line 185
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_11

    return v0

    :cond_11
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_35

    .line 188
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 189
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-eq p2, v0, :cond_34

    .line 190
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 191
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_34
    return p2

    :cond_35
    if-ne v1, v2, :cond_3c

    .line 195
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1

    :cond_3c
    const/4 p2, 0x3

    if-ne v1, p2, :cond_4d

    .line 197
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 200
    :cond_4d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-nez v3, :cond_30

    .line 1144
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v6, :cond_2d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_14
    if-ge v7, v2, :cond_2d

    if-lez v7, :cond_1b

    .line 1151
    iget v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v9

    .line 1153
    :cond_1b
    aget-object v9, v1, v7

    if-nez v9, :cond_20

    goto :goto_2a

    .line 1157
    :cond_20
    invoke-direct {v0, v9, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v4, :cond_28

    goto :goto_2d

    :cond_28
    add-int/lit8 v6, v6, 0x1

    :goto_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_2d
    :goto_2d
    move v7, v6

    const/4 v6, 0x0

    goto :goto_51

    .line 1165
    :cond_30
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v6, :cond_50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_37
    if-ge v7, v2, :cond_50

    if-lez v7, :cond_3e

    .line 1172
    iget v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v9

    .line 1174
    :cond_3e
    aget-object v9, v1, v7

    if-nez v9, :cond_43

    goto :goto_4d

    .line 1178
    :cond_43
    invoke-direct {v0, v9, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v4, :cond_4b

    goto :goto_50

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    :goto_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_50
    :goto_50
    const/4 v7, 0x0

    .line 1187
    :goto_51
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_5a

    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 1188
    iput-object v8, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    :cond_5a
    const/4 v8, 0x1

    if-nez v6, :cond_5f

    if-eq v3, v8, :cond_63

    :cond_5f
    if-nez v7, :cond_65

    if-nez v3, :cond_65

    :cond_63
    const/4 v9, 0x1

    goto :goto_66

    :cond_65
    const/4 v9, 0x0

    :goto_66
    if-nez v9, :cond_12b

    if-nez v3, :cond_74

    int-to-float v6, v2

    int-to-float v10, v7

    div-float/2addr v6, v10

    float-to-double v10, v6

    .line 1201
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_7d

    :cond_74
    int-to-float v7, v2

    int-to-float v10, v6

    div-float/2addr v7, v10

    float-to-double v10, v7

    .line 1203
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 1206
    :goto_7d
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_8a

    array-length v12, v10

    if-ge v12, v7, :cond_86

    goto :goto_8a

    .line 1209
    :cond_86
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8e

    .line 1207
    :cond_8a
    :goto_8a
    new-array v10, v7, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1211
    :goto_8e
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v10, :cond_9a

    array-length v12, v10

    if-ge v12, v6, :cond_96

    goto :goto_9a

    .line 1214
    :cond_96
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9e

    .line 1212
    :cond_9a
    :goto_9a
    new-array v10, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_9e
    const/4 v10, 0x0

    :goto_9f
    if-ge v10, v7, :cond_e7

    const/4 v11, 0x0

    :goto_a2
    if-ge v11, v6, :cond_e4

    mul-int v12, v11, v7

    add-int/2addr v12, v10

    if-ne v3, v8, :cond_ac

    mul-int v12, v10, v6

    add-int/2addr v12, v11

    .line 1223
    :cond_ac
    array-length v13, v1

    if-lt v12, v13, :cond_b0

    goto :goto_e1

    .line 1226
    :cond_b0
    aget-object v12, v1, v12

    if-nez v12, :cond_b5

    goto :goto_e1

    .line 1230
    :cond_b5
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 1231
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v15, v14, v10

    if-eqz v15, :cond_c7

    aget-object v14, v14, v10

    .line 1232
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-ge v14, v13, :cond_cb

    .line 1233
    :cond_c7
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v12, v13, v10

    .line 1235
    :cond_cb
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 1236
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v15, v14, v11

    if-eqz v15, :cond_dd

    aget-object v14, v14, v11

    .line 1237
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    if-ge v14, v13, :cond_e1

    .line 1238
    :cond_dd
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v12, v13, v11

    :cond_e1
    :goto_e1
    add-int/lit8 v11, v11, 0x1

    goto :goto_a2

    :cond_e4
    add-int/lit8 v10, v10, 0x1

    goto :goto_9f

    :cond_e7
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_e9
    if-ge v10, v7, :cond_fe

    .line 1245
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v12, v12, v10

    if-eqz v12, :cond_fb

    if-lez v10, :cond_f6

    .line 1248
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v11, v13

    .line 1250
    :cond_f6
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v11, v12

    :cond_fb
    add-int/lit8 v10, v10, 0x1

    goto :goto_e9

    :cond_fe
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_100
    if-ge v10, v6, :cond_115

    .line 1255
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v13, v13, v10

    if-eqz v13, :cond_112

    if-lez v10, :cond_10d

    .line 1258
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v12, v14

    .line 1260
    :cond_10d
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_112
    add-int/lit8 v10, v10, 0x1

    goto :goto_100

    .line 1263
    :cond_115
    aput v11, p5, v5

    .line 1264
    aput v12, p5, v8

    if-nez v3, :cond_123

    if-le v11, v4, :cond_63

    if-le v7, v8, :cond_63

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_66

    :cond_123
    if-le v12, v4, :cond_63

    if-le v6, v8, :cond_63

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_66

    .line 1288
    :cond_12b
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v1, v5

    .line 1289
    aput v6, v1, v8

    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 34

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_9

    return-void

    .line 797
    :cond_9
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 798
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 799
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez p3, :cond_8e

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_30
    if-ge v11, v9, :cond_ef

    .line 806
    aget-object v12, p1, v11

    .line 807
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 808
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_42

    add-int/lit8 v0, v0, 0x1

    :cond_42
    move v14, v0

    if-eq v1, v15, :cond_4b

    .line 811
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_53

    :cond_4b
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    if-nez v0, :cond_61

    if-lez v11, :cond_61

    .line 812
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_61

    rem-int v2, v11, v2

    if-nez v2, :cond_61

    const/4 v0, 0x1

    :cond_61
    if-eqz v0, :cond_81

    .line 817
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 818
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 819
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    move v1, v13

    goto :goto_87

    :cond_81
    if-lez v11, :cond_7f

    .line 822
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 827
    :goto_87
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_30

    :cond_8e
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_91
    if-ge v11, v9, :cond_ef

    .line 832
    aget-object v12, p1, v11

    .line 833
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 834
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_a3

    add-int/lit8 v0, v0, 0x1

    :cond_a3
    move v14, v0

    if-eq v1, v15, :cond_ac

    .line 837
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_b4

    :cond_ac
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_b4

    const/4 v0, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    if-nez v0, :cond_c2

    if-lez v11, :cond_c2

    .line 838
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_c2

    rem-int v2, v11, v2

    if-nez v2, :cond_c2

    const/4 v0, 0x1

    :cond_c2
    if-eqz v0, :cond_e2

    .line 843
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 844
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 845
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    move v1, v13

    goto :goto_e8

    :cond_e2
    if-lez v11, :cond_e0

    .line 848
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 853
    :goto_e8
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_91

    .line 856
    :cond_ef
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 858
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 859
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 860
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 861
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v6

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    move-result v7

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v9

    .line 866
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v10

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_11e

    .line 873
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    if-ne v11, v12, :cond_11c

    goto :goto_11e

    :cond_11c
    const/4 v11, 0x0

    goto :goto_11f

    :cond_11e
    :goto_11e
    const/4 v11, 0x1

    :goto_11f
    if-lez v0, :cond_146

    if-eqz v11, :cond_146

    const/4 v0, 0x0

    :goto_124
    if-ge v0, v1, :cond_146

    .line 878
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez p3, :cond_13a

    .line 880
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_143

    .line 882
    :cond_13a
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    :goto_143
    add-int/lit8 v0, v0, 0x1

    goto :goto_124

    :cond_146
    move/from16 v22, v7

    move v0, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v7, v6

    move-object v6, v3

    move-object v3, v2

    move v2, v10

    :goto_150
    if-ge v14, v1, :cond_227

    .line 888
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez p3, :cond_1c0

    add-int/lit8 v2, v1, -0x1

    if-ge v14, v2, :cond_174

    .line 891
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 892
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v5, 0x0

    goto :goto_17a

    .line 895
    :cond_174
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 896
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v5

    .line 898
    :goto_17a
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v24, v11

    move-object v11, v3

    move-object/from16 p1, v3

    move v3, v12

    move-object v12, v6

    move v6, v13

    move-object v13, v4

    move-object/from16 p2, v4

    move v4, v14

    move-object v14, v2

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v0

    move/from16 v18, v5

    move/from16 v19, p4

    .line 899
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 903
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 904
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v9

    add-int v12, v3, v9

    if-lez v4, :cond_1b0

    .line 906
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v12, v3

    :cond_1b0
    move-object/from16 v3, p1

    move v13, v6

    move-object/from16 v6, v24

    const/16 v22, 0x0

    move-object/from16 v24, p2

    move/from16 v27, v5

    move-object v5, v2

    move/from16 v2, v27

    goto/16 :goto_21f

    :cond_1c0
    move-object/from16 p1, v3

    move v3, v12

    move v0, v13

    move v4, v14

    add-int/lit8 v9, v1, -0x1

    if-ge v4, v9, :cond_1de

    .line 910
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 911
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v24, v9

    const/16 v25, 0x0

    goto :goto_1e8

    .line 914
    :cond_1de
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v10

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 917
    :goto_1e8
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, v24

    move-object v14, v5

    move-object/from16 v26, v15

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v19, p4

    .line 918
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 922
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v7

    add-int v13, v0, v7

    .line 923
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v4, :cond_219

    .line 925
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v13, v3

    :cond_219
    move v12, v0

    move/from16 v0, v25

    move-object/from16 v3, v26

    const/4 v7, 0x0

    :goto_21f
    add-int/lit8 v14, v4, 0x1

    move/from16 v15, p4

    move-object/from16 v4, v24

    goto/16 :goto_150

    :cond_227
    move v3, v12

    move v0, v13

    .line 929
    aput v0, p5, v21

    .line 930
    aput v3, p5, v20

    return-void
.end method

.method private measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 34

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_9

    return-void

    .line 949
    :cond_9
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 950
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 951
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez p3, :cond_95

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_31
    if-ge v11, v9, :cond_f4

    add-int/lit8 v12, v0, 0x1

    .line 960
    aget-object v13, p1, v11

    .line 961
    invoke-direct {v8, v13, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v14

    .line 962
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_45

    add-int/lit8 v1, v1, 0x1

    :cond_45
    move/from16 v16, v1

    if-eq v2, v15, :cond_4f

    .line 965
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v14

    if-le v0, v15, :cond_57

    :cond_4f
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    if-nez v0, :cond_63

    if-lez v11, :cond_63

    .line 966
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_63

    if-le v12, v1, :cond_63

    const/4 v0, 0x1

    :cond_63
    if-eqz v0, :cond_84

    .line 971
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 972
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 973
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v12

    move v2, v14

    goto :goto_8d

    :cond_84
    if-lez v11, :cond_8b

    .line 977
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v14

    add-int/2addr v2, v0

    goto :goto_8c

    :cond_8b
    move v2, v14

    :goto_8c
    const/4 v0, 0x0

    .line 982
    :goto_8d
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    goto :goto_31

    :cond_95
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_98
    if-ge v11, v9, :cond_f4

    .line 988
    aget-object v12, p1, v11

    .line 989
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 990
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_aa

    add-int/lit8 v1, v1, 0x1

    :cond_aa
    move v14, v1

    if-eq v0, v15, :cond_b3

    .line 993
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v1, v0

    add-int/2addr v1, v13

    if-le v1, v15, :cond_bb

    :cond_b3
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_bb

    const/4 v1, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v1, 0x0

    :goto_bc
    if-nez v1, :cond_c7

    if-lez v11, :cond_c7

    .line 994
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_c7

    if-gez v2, :cond_c7

    const/4 v1, 0x1

    :cond_c7
    if-eqz v1, :cond_e7

    .line 999
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1000
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 1001
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    move v0, v13

    goto :goto_ed

    :cond_e7
    if-lez v11, :cond_e5

    .line 1005
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v1, v13

    add-int/2addr v0, v1

    .line 1010
    :goto_ed
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_98

    .line 1013
    :cond_f4
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1015
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1016
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1017
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1018
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v6

    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    move-result v7

    .line 1022
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v9

    .line 1023
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v10

    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_123

    .line 1030
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    if-ne v11, v12, :cond_121

    goto :goto_123

    :cond_121
    const/4 v11, 0x0

    goto :goto_124

    :cond_123
    :goto_123
    const/4 v11, 0x1

    :goto_124
    if-lez v1, :cond_14b

    if-eqz v11, :cond_14b

    const/4 v1, 0x0

    :goto_129
    if-ge v1, v0, :cond_14b

    .line 1035
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez p3, :cond_13f

    .line 1037
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_148

    .line 1039
    :cond_13f
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    :goto_148
    add-int/lit8 v1, v1, 0x1

    goto :goto_129

    :cond_14b
    move/from16 v22, v7

    move v1, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v7, v6

    move-object v6, v3

    move-object v3, v2

    move v2, v10

    :goto_155
    if-ge v14, v0, :cond_22c

    .line 1045
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez p3, :cond_1c5

    add-int/lit8 v2, v0, -0x1

    if-ge v14, v2, :cond_179

    .line 1048
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1049
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v5, 0x0

    goto :goto_17f

    .line 1052
    :cond_179
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v5

    .line 1055
    :goto_17f
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v24, v11

    move-object v11, v3

    move-object/from16 p1, v3

    move v3, v12

    move-object v12, v6

    move v6, v13

    move-object v13, v4

    move-object/from16 p2, v4

    move v4, v14

    move-object v14, v2

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, p4

    .line 1056
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1060
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1061
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v9

    add-int v12, v3, v9

    if-lez v4, :cond_1b5

    .line 1063
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v12, v3

    :cond_1b5
    move-object/from16 v3, p1

    move v13, v6

    move-object/from16 v6, v24

    const/16 v22, 0x0

    move-object/from16 v24, p2

    move/from16 v27, v5

    move-object v5, v2

    move/from16 v2, v27

    goto/16 :goto_224

    :cond_1c5
    move-object/from16 p1, v3

    move v3, v12

    move v1, v13

    move v4, v14

    add-int/lit8 v9, v0, -0x1

    if-ge v4, v9, :cond_1e3

    .line 1067
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1068
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v24, v9

    const/16 v25, 0x0

    goto :goto_1ed

    .line 1071
    :cond_1e3
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v10

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 1074
    :goto_1ed
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, v24

    move-object v14, v5

    move-object/from16 v26, v15

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v19, p4

    .line 1075
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1079
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v7

    add-int v13, v1, v7

    .line 1080
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_21e

    .line 1082
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v13, v3

    :cond_21e
    move v12, v1

    move/from16 v1, v25

    move-object/from16 v3, v26

    const/4 v7, 0x0

    :goto_224
    add-int/lit8 v14, v4, 0x1

    move/from16 v15, p4

    move-object/from16 v4, v24

    goto/16 :goto_155

    :cond_22c
    move v3, v12

    move v1, v13

    .line 1086
    aput v1, p5, v21

    .line 1087
    aput v3, p5, v20

    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 28

    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_7

    return-void

    .line 1107
    :cond_7
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_2a

    .line 1108
    new-instance v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1109
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 1111
    :cond_2a
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1112
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->clear()V

    .line 1113
    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1114
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v20

    move-object v11, v0

    move/from16 v12, p3

    move-object/from16 v16, v1

    move/from16 v21, p4

    .line 1113
    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    :goto_57
    const/4 v0, 0x0

    :goto_58
    if-ge v0, v9, :cond_62

    .line 1118
    aget-object v1, p1, v0

    .line 1119
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 1122
    :cond_62
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v0

    aput v0, p5, v10

    .line 1123
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 8

    .line 1392
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 1394
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 1395
    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    if-eqz v1, :cond_67

    if-eq v1, v0, :cond_49

    const/4 v2, 0x2

    if-eq v1, v2, :cond_45

    const/4 v2, 0x3

    if-eq v1, v2, :cond_27

    goto :goto_7a

    .line 1415
    :cond_27
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_7a

    .line 1417
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x0

    .line 1418
    :goto_3f
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1411
    :cond_45
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_7a

    .line 1397
    :cond_49
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_50
    if-ge v2, v1, :cond_7a

    .line 1399
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_60

    const/4 v4, 0x1

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    .line 1400
    :goto_61
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1404
    :cond_67
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7a

    .line 1405
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1406
    invoke-virtual {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1422
    :cond_7a
    :goto_7a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 87
    check-cast p1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 89
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 90
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 91
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 92
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 93
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 94
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 96
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 97
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 98
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 99
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 100
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 101
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 103
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 104
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 106
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 107
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 108
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 110
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 112
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public measure(IIII)V
    .registers 23

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 231
    iget v0, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 232
    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->setMeasure(II)V

    .line 233
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void

    .line 239
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    move-result v12

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    move-result v13

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    move-result v14

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    move-result v15

    const/4 v0, 0x2

    new-array v5, v0, [I

    sub-int v1, v8, v12

    sub-int/2addr v1, v13

    .line 246
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3a

    sub-int v1, v10, v14

    sub-int/2addr v1, v15

    :cond_3a
    move/from16 v16, v1

    const/4 v1, -0x1

    if-nez v2, :cond_4c

    .line 251
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    if-ne v2, v1, :cond_45

    .line 252
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 254
    :cond_45
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    if-ne v2, v1, :cond_58

    .line 255
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    goto :goto_58

    .line 258
    :cond_4c
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    if-ne v2, v1, :cond_52

    .line 259
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 261
    :cond_52
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    if-ne v2, v1, :cond_58

    .line 262
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 266
    :cond_58
    :goto_58
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 269
    :goto_5c
    iget v11, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    const/16 v0, 0x8

    if-ge v2, v11, :cond_72

    .line 270
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    .line 271
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-ne v11, v0, :cond_6e

    add-int/lit8 v3, v3, 0x1

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto :goto_5c

    :cond_72
    if-lez v3, :cond_91

    sub-int/2addr v11, v3

    .line 277
    new-array v1, v11, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 279
    :goto_79
    iget v11, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v2, v11, :cond_8f

    .line 280
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    .line 281
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_8b

    .line 282
    aput-object v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_79

    :cond_8f
    move v2, v3

    goto :goto_92

    :cond_91
    move v2, v11

    .line 288
    :goto_92
    iput-object v1, v6, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 289
    iput v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 290
    iget v0, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    if-eqz v0, :cond_cf

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a8

    move-object/from16 v17, v5

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto :goto_dc

    .line 304
    :cond_a8
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    const/4 v11, 0x1

    move/from16 v4, v16

    move-object/from16 v17, v5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    goto :goto_db

    :cond_b5
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 292
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    goto :goto_db

    :cond_c2
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 296
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    goto :goto_db

    :cond_cf
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 300
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    :goto_db
    const/4 v0, 0x0

    .line 310
    :goto_dc
    aget v1, v17, v0

    add-int/2addr v1, v12

    add-int/2addr v1, v13

    .line 311
    aget v2, v17, v11

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v7, v4, :cond_ec

    move v1, v8

    goto :goto_f7

    :cond_ec
    if-ne v7, v3, :cond_f3

    .line 319
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_f7

    :cond_f3
    if-nez v7, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v1, 0x0

    :goto_f7
    if-ne v9, v4, :cond_fb

    move v2, v10

    goto :goto_106

    :cond_fb
    if-ne v9, v3, :cond_102

    .line 327
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_106

    :cond_102
    if-nez v9, :cond_105

    goto :goto_106

    :cond_105
    const/4 v2, 0x0

    .line 332
    :goto_106
    invoke-virtual {v6, v1, v2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->setMeasure(II)V

    .line 333
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 334
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 335
    iget v1, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-lez v1, :cond_114

    goto :goto_115

    :cond_114
    const/4 v11, 0x0

    :goto_115
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .registers 2

    .line 147
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 2

    .line 123
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 2

    .line 149
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 2

    .line 125
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 2

    .line 156
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2

    .line 140
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 2

    .line 167
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 2

    .line 132
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .registers 2

    .line 151
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .registers 2

    .line 127
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .registers 2

    .line 153
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .registers 2

    .line 129
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 2

    .line 171
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 120
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 2

    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2

    .line 144
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    return-void
.end method

.method public setVerticalGap(I)V
    .registers 2

    .line 169
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 2

    .line 136
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    return-void
.end method

.method public setWrapMode(I)V
    .registers 2

    .line 164
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    return-void
.end method

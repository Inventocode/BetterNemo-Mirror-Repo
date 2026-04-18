.class public Landroidx/constraintlayout/helper/widget/CircularFlow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "CircularFlow.java"


# static fields
.field private static DEFAULT_ANGLE:F

.field private static DEFAULT_RADIUS:I


# instance fields
.field private mAngles:[F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCountAngle:I

.field private mCountRadius:I

.field private mRadius:[I

.field private mReferenceAngles:Ljava/lang/String;

.field private mReferenceDefaultAngle:Ljava/lang/Float;

.field private mReferenceDefaultRadius:Ljava/lang/Integer;

.field private mReferenceRadius:Ljava/lang/String;

.field mViewCenter:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private addAngle(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleString"
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    .line 431
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_e

    return-void

    .line 434
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    if-nez v0, :cond_13

    return-void

    .line 438
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-le v1, v2, :cond_23

    .line 439
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 441
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    aput p1, v0, v1

    .line 442
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    :cond_34
    :goto_34
    return-void
.end method

.method private addRadius(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radiusString"
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_43

    .line 452
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_e

    return-void

    .line 455
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    if-nez v0, :cond_13

    return-void

    .line 459
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-le v1, v2, :cond_23

    .line 460
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 463
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    aput p1, v0, v1

    .line 464
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    :cond_43
    :goto_43
    return-void
.end method

.method private anchorReferences()V
    .registers 10

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 183
    :goto_9
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_de

    .line 184
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1b

    goto/16 :goto_da

    .line 188
    :cond_1b
    sget v2, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    .line 189
    sget v3, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    .line 191
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    const-string v5, "CircularFlow"

    const/4 v6, 0x1

    if-eqz v4, :cond_2c

    array-length v7, v4

    if-ge v0, v7, :cond_2c

    .line 192
    aget v2, v4, v0

    goto :goto_74

    .line 193
    :cond_2c
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_50

    .line 194
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 195
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    if-nez v4, :cond_44

    new-array v4, v6, [I

    .line 196
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 198
    :cond_44
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 199
    iget v7, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    sub-int/2addr v7, v6

    aput v2, v4, v7

    goto :goto_74

    .line 201
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added radius to view with id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_74
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    if-eqz v4, :cond_7e

    array-length v7, v4

    if-ge v0, v7, :cond_7e

    .line 205
    aget v3, v4, v0

    goto :goto_c9

    .line 206
    :cond_7e
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    if-eqz v4, :cond_a5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v7, -0x40800000  # -1.0f

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_a5

    .line 207
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 208
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    if-nez v4, :cond_99

    new-array v4, v6, [F

    .line 209
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 211
    :cond_99
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 212
    iget v5, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    sub-int/2addr v5, v6

    aput v3, v4, v5

    goto :goto_c9

    .line 214
    :cond_a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added angle to view with id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_c9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 217
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 218
    iget v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 219
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 220
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_da
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 222
    :cond_de
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures()V

    return-void
.end method

.method private setAngles(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 392
    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    :goto_6
    const/16 v1, 0x2c

    .line 394
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    return-void

    .line 399
    :cond_1b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_6
.end method

.method private setRadius(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 412
    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    :goto_6
    const/16 v1, 0x2c

    .line 414
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    return-void

    .line 419
    :cond_1b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_6
.end method


# virtual methods
.method public getAngles()[F
    .registers 3

    .line 128
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getRadius()[I
    .registers 3

    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_77

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_74

    .line 140
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 141
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_viewCenter:I

    if-ne v3, v4, :cond_26

    .line 142
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    goto :goto_71

    .line 143
    :cond_26
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_angles:I

    if-ne v3, v4, :cond_34

    .line 144
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    .line 145
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    goto :goto_71

    .line 146
    :cond_34
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_radiusInDP:I

    if-ne v3, v4, :cond_42

    .line 147
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    .line 148
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    goto :goto_71

    .line 149
    :cond_42
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultAngle:I

    if-ne v3, v4, :cond_5a

    .line 150
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    .line 151
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    goto :goto_71

    .line 152
    :cond_5a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultRadius:I

    if-ne v3, v4, :cond_71

    .line 153
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    :cond_71
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 157
    :cond_74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_77
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 163
    invoke-super {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->onAttachedToWindow()V

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    new-array v2, v1, [F

    .line 165
    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 166
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    .line 168
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    if-eqz v0, :cond_1a

    new-array v1, v1, [I

    .line 169
    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 170
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    .line 172
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    if-eqz v0, :cond_25

    .line 173
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    .line 175
    :cond_25
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    .line 178
    :cond_30
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    return-void
.end method

.method public setDefaultAngle(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 322
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    return-void
.end method

.method public setDefaultRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 332
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    return-void
.end method

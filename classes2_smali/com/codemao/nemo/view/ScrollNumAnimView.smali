.class public Lcom/codemao/nemo/view/ScrollNumAnimView;
.super Landroid/view/View;
.source "ScrollNumAnimView.java"


# instance fields
.field private doingAnim:Z

.field private dy:I

.field private finalNum:Ljava/lang/String;

.field private finalNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ScrollNumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private finalTime:I

.field private indexTimeOffset:I

.field private ints:[Ljava/lang/String;

.field private oneTurnDy:F

.field private textColor:I

.field private textPaint:Landroid/text/TextPaint;

.field private textSize:F

.field private timeMinumSecond:I

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    .line 22
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->ints:[Ljava/lang/String;

    const/high16 p3, 0x42200000  # 40.0f

    .line 24
    iput p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    .line 25
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    const/4 p3, 0x0

    .line 26
    iput-boolean p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->doingAnim:Z

    const/16 p3, 0x1f4

    .line 28
    iput p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->timeMinumSecond:I

    const/16 p4, 0x32

    .line 29
    iput p4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->indexTimeOffset:I

    const/4 p4, 0x0

    .line 31
    iput p4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->oneTurnDy:F

    .line 32
    iput p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalTime:I

    const/high16 p3, 0x40000000  # 2.0f

    .line 33
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->dy:I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/ScrollNumAnimView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->indexTimeOffset:I

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/ScrollNumAnimView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->timeMinumSecond:I

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/ScrollNumAnimView;)F
    .registers 1

    .line 19
    iget p0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->oneTurnDy:F

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/ScrollNumAnimView;)F
    .registers 1

    .line 19
    iget p0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/ScrollNumAnimView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalTime:I

    return p0
.end method

.method static synthetic access$602(Lcom/codemao/nemo/view/ScrollNumAnimView;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->doingAnim:Z

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_25

    .line 112
    sget-object v1, Lcom/codemao/nemo/R$styleable;->ScrollNumAnimView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v1, 0xe

    .line 113
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    const/high16 p2, -0x1000000

    .line 114
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textColor:I

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    :cond_25
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textPaint:Landroid/text/TextPaint;

    .line 120
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "0"

    .line 124
    iput-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    .line 126
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->initScrollInfo(Ljava/lang/String;)V

    return-void
.end method

.method private initScrollInfo(Ljava/lang/String;)V
    .registers 13

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    const/high16 v1, 0x41200000  # 10.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->oneTurnDy:F

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    const-string v0, ""

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v2, v0, :cond_72

    aget-object v4, p1, v2

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 89
    :try_start_2a
    new-instance v5, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-direct {v5}, Lcom/codemao/nemo/bean/ScrollNumInfo;-><init>()V

    .line 90
    invoke-virtual {v5, v4}, Lcom/codemao/nemo/bean/ScrollNumInfo;->setNum(Ljava/lang/String;)V

    int-to-float v6, v3

    .line 91
    iget v7, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    mul-float v6, v6, v7

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/codemao/nemo/bean/ScrollNumInfo;->setPosionX(F)V

    const/16 v6, 0xa

    new-array v7, v6, [F

    const/4 v8, 0x0

    :goto_42
    if-ge v8, v6, :cond_4e

    int-to-float v9, v8

    .line 94
    iget v10, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    mul-float v9, v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 97
    :cond_4e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 98
    iget v6, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    neg-float v8, v6

    const/high16 v9, 0x41f00000  # 30.0f

    mul-float v8, v8, v9

    int-to-float v4, v4

    mul-float v4, v4, v6

    sub-float/2addr v8, v4

    .line 99
    invoke-virtual {v5, v8}, Lcom/codemao/nemo/bean/ScrollNumInfo;->setTotalMoveY(F)V

    .line 100
    invoke-virtual {v5, v7}, Lcom/codemao/nemo/bean/ScrollNumInfo;->setPosintionYs([F)V

    .line 101
    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_68} :catch_6b

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :catch_6b
    move-exception v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_72
    return-void
.end method


# virtual methods
.method public doAnim()V
    .registers 5

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->doingAnim:Z

    .line 167
    iget v1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->timeMinumSecond:I

    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->indexTimeOffset:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalTime:I

    .line 168
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_35

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    aput v1, v2, v0

    .line 169
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 170
    iget v1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/codemao/nemo/view/ScrollNumAnimView$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/ScrollNumAnimView$1;-><init>(Lcom/codemao/nemo/view/ScrollNumAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    :cond_35
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getFinalNum()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 211
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 212
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 213
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 148
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-boolean v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->doingAnim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    .line 150
    :goto_9
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_94

    const/4 v2, 0x0

    :goto_12
    const/16 v3, 0xa

    if-ge v2, v3, :cond_67

    .line 152
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v3

    aget v3, v3, v2

    const/high16 v4, -0x3de00000  # -40.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_64

    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v3

    aget v3, v3, v2

    const/high16 v4, 0x42200000  # 40.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_64

    .line 153
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->ints:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosionX()F

    move-result v4

    iget-object v5, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v5

    aget v5, v5, v2

    iget v6, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 158
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_94

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getNum()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNums:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosionX()F

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    :cond_94
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_35

    if-ne v1, v3, :cond_35

    .line 138
    iget p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    iget-object p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    div-float/2addr p1, v2

    iget p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->dy:I

    int-to-float v0, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    int-to-float p2, p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_58

    :cond_35
    if-ne v0, v3, :cond_4c

    .line 140
    iget p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    div-float/2addr p1, v2

    iget v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->dy:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_58

    :cond_4c
    if-ne v1, v3, :cond_58

    .line 142
    iget p2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->textSize:F

    iget v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->dy:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_58
    :goto_58
    return-void
.end method

.method public setFinalNum(Ljava/lang/String;Z)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 58
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->doingAnim:Z

    .line 61
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/view/ScrollNumAnimView;->finalNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 63
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->initScrollInfo(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 68
    :cond_24
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->initScrollInfo(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    if-eqz p2, :cond_30

    .line 71
    invoke-virtual {p0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->doAnim()V

    goto :goto_33

    .line 73
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_33
    return-void
.end method

.class public Lcn/codemao/android/sketch/utils/CEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "CEditText.java"


# instance fields
.field private bound:Landroid/graphics/Rect;

.field private lartestWidth:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/CEditText;->bound:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/CEditText;->bound:Landroid/graphics/Rect;

    return-void
.end method

.method private getLargestWidth()F
    .registers 11

    .line 83
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 88
    :goto_13
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v6

    if-ge v2, v6, :cond_7d

    .line 89
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 91
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcn/codemao/android/sketch/utils/CEditText;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v7, v6, v4

    if-lez v7, :cond_2f

    move v4, v6

    .line 99
    :cond_2f
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-virtual {v0, v2, v6}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v9, v5

    move-object v5, v3

    move v3, v9

    goto :goto_13

    .line 105
    :cond_7d
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcn/codemao/android/sketch/utils/CEditText;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/utils/CEditText;->lartestWidth:F

    return v4
.end method


# virtual methods
.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_22

    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 114
    new-array v2, v1, [F

    .line 115
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    :goto_13
    if-ge v0, v1, :cond_21

    .line 117
    aget p2, v2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    move v0, p1

    :cond_22
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 55
    invoke-direct {p0}, Lcn/codemao/android/sketch/utils/CEditText;->getLargestWidth()F

    move-result v0

    .line 60
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41200000  # 10.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 62
    iget-object v3, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    if-eqz v3, :cond_82

    .line 64
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    if-le v3, v2, :cond_65

    .line 65
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcn/codemao/android/sketch/utils/CEditText;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_40

    .line 67
    iget-object v4, p0, Lcn/codemao/android/sketch/utils/CEditText;->bound:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v7, v5, v1

    const/4 v8, 0x0

    add-float v9, v0, v1

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v0

    iget-object v11, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    :cond_40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4, v0}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    if-lez v3, :cond_82

    .line 72
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v4, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p0, Lcn/codemao/android/sketch/utils/CEditText;->lartestWidth:F

    add-float v6, v2, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_82

    .line 74
    :cond_65
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcn/codemao/android/sketch/utils/CEditText;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v2}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 75
    iget-object v2, p0, Lcn/codemao/android/sketch/utils/CEditText;->bound:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v5, v3, v1

    const/4 v6, 0x0

    add-float v7, v0, v1

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v0

    iget-object v9, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    :cond_82
    :goto_82
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundColors(I)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_10

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    .line 44
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/CEditText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

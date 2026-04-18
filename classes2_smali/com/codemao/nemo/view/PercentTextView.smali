.class public Lcom/codemao/nemo/view/PercentTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "PercentTextView.java"


# instance fields
.field private adjustWidth:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/PercentTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object p3, Lcom/codemao/nemo/R$styleable;->PercentTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/PercentTextView;->adjustWidth:Z

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/PercentTextView;->textSize:F

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private remeasuredWidth(Ljava/lang/String;)V
    .registers 5

    .line 125
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/4 v2, 0x0

    int-to-float v2, v2

    int-to-float v0, v0

    add-float/2addr v0, p1

    int-to-float p1, v1

    add-float/2addr v0, p1

    add-float/2addr v2, v0

    float-to-int p1, v2

    .line 130
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTextAndMeasured(Ljava/lang/String;)V
    .registers 3

    .line 117
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-boolean v0, p0, Lcom/codemao/nemo/view/PercentTextView;->adjustWidth:Z

    if-eqz v0, :cond_a

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/PercentTextView;->remeasuredWidth(Ljava/lang/String;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public setByteText(Ljava/lang/String;III)V
    .registers 11

    :try_start_0
    const-string v0, "GBK"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    array-length v0, v0

    if-gt v0, p4, :cond_b

    move-object v0, p1

    goto :goto_6f

    .line 86
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 87
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xff

    if-ge v2, v4, :cond_33

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ltz v4, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_2b
    add-int/lit8 v3, v3, 0x2

    :goto_2d
    if-le v3, p2, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_33
    :goto_33
    const/4 v3, 0x0

    :goto_34
    if-lez v0, :cond_4d

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ltz v4, :cond_45

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_45

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_45
    add-int/lit8 v3, v3, 0x2

    :goto_47
    if-le v3, p3, :cond_4a

    goto :goto_4d

    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 108
    :cond_4d
    :goto_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_6f
    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/PercentTextView;->setTextAndMeasured(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_81

    :catch_73
    int-to-float p2, p2

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p3, p3

    div-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p4, p4

    div-float/2addr p4, v0

    float-to-int p4, p4

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/view/PercentTextView;->setCharText(Ljava/lang/String;III)V

    :goto_81
    return-void
.end method

.method public setCharText(Ljava/lang/String;III)V
    .registers 7

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p4, :cond_7

    goto :goto_26

    .line 65
    :cond_7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p2, v0, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_26
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/PercentTextView;->setTextAndMeasured(Ljava/lang/String;)V

    return-void
.end method

.method public setTextScale(F)V
    .registers 3

    .line 136
    iget v0, p0, Lcom/codemao/nemo/view/PercentTextView;->textSize:F

    mul-float v0, v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method

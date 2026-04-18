.class public Lcom/codemao/nemo/view/CustomImageSpan;
.super Landroid/text/style/ImageSpan;
.source "CustomImageSpan.java"


# instance fields
.field private ALIGN_FONTCENTER:I

.field drawbleLeftPadding:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/codemao/nemo/view/CustomImageSpan;->ALIGN_FONTCENTER:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/codemao/nemo/view/CustomImageSpan;->drawbleLeftPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/codemao/nemo/view/CustomImageSpan;->ALIGN_FONTCENTER:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/codemao/nemo/view/CustomImageSpan;->drawbleLeftPadding:I

    .line 18
    iput p3, p0, Lcom/codemao/nemo/view/CustomImageSpan;->drawbleLeftPadding:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    .line 36
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 43
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p4

    .line 44
    iget p4, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/4 p6, 0x1

    if-ne p4, p6, :cond_1b

    .line 45
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p8, p3

    goto :goto_32

    .line 46
    :cond_1b
    iget p6, p0, Lcom/codemao/nemo/view/CustomImageSpan;->ALIGN_FONTCENTER:I

    if-ne p4, p6, :cond_32

    .line 49
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p4, p7

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p7, p3

    add-int/2addr p4, p7

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p3, p3, 0x2

    sub-int p8, p4, p3

    .line 52
    :cond_32
    :goto_32
    iget p3, p0, Lcom/codemao/nemo/view/CustomImageSpan;->drawbleLeftPadding:I

    int-to-float p3, p3

    add-float/2addr p5, p3

    int-to-float p3, p8

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    .line 61
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p5, :cond_28

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 65
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p1

    .line 66
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 68
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x4

    sub-int p4, p1, p3

    add-int/2addr p1, p3

    neg-int p1, p1

    .line 71
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 72
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 73
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 74
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 76
    :cond_28
    iget p1, p2, Landroid/graphics/Rect;->right:I

    return p1
.end method

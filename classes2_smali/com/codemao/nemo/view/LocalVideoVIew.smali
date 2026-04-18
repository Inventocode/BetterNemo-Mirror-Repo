.class public Lcom/codemao/nemo/view/LocalVideoVIew;
.super Landroid/widget/VideoView;
.source "LocalVideoVIew.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->width:I

    const/4 p1, -0x2

    .line 10
    iput p1, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->width:I

    const/4 p1, -0x2

    .line 10
    iput p1, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->height:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    .line 30
    iget v0, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->width:I

    if-lez v0, :cond_d

    iget v1, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->height:I

    if-gtz v1, :cond_9

    goto :goto_d

    .line 33
    :cond_9
    invoke-virtual {p0, v0, v1}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    goto :goto_10

    .line 31
    :cond_d
    :goto_d
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    :goto_10
    return-void
.end method

.method public setSize(II)V
    .registers 3

    .line 41
    iput p1, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->width:I

    .line 42
    iput p2, p0, Lcom/codemao/nemo/view/LocalVideoVIew;->height:I

    return-void
.end method

.class public Lcom/codemao/toolssdk/image_selector/widget/SquareRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SquareRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4

    const/4 v0, 0x0

    .line 24
    invoke-static {v0, p1}, Landroid/widget/RelativeLayout;->getDefaultSize(II)I

    move-result p1

    .line 25
    invoke-static {v0, p2}, Landroid/widget/RelativeLayout;->getDefaultSize(II)I

    move-result p2

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000  # 2.0f

    .line 29
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 31
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

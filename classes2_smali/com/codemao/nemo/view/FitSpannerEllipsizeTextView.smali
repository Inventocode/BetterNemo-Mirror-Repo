.class public final Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "FitSpannerEllipsizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;
    }
.end annotation


# instance fields
.field private normalClickListener:Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;->startTime:J

    .line 47
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    instance-of v2, v1, Landroid/text/SpannedString;

    const/4 v3, 0x1

    if-eqz v2, :cond_6b

    if-ne v0, v3, :cond_6b

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;->startTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    const/4 v0, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_26

    return v0

    .line 54
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr p1, v4

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr p1, v4

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 64
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    int-to-float v2, v2

    .line 65
    invoke-virtual {v4, p1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 67
    check-cast v1, Landroid/text/SpannedString;

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-virtual {v1, p1, p1, v2}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 68
    array-length v1, p1

    if-eqz v1, :cond_64

    .line 69
    aget-object p1, p1, v0

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return v3

    .line 72
    :cond_64
    iget-object p1, p0, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;->normalClickListener:Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;

    if-eqz p1, :cond_6b

    .line 73
    invoke-interface {p1, p0}, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;->onNormalClick(Landroid/view/View;)V

    :cond_6b
    return v3
.end method

.method public setNormalClickListener(Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;->normalClickListener:Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;

    return-void
.end method

.class public Lcom/codemao/nemo/view/LinkMovementClickMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementClickMethod.java"


# static fields
.field private static sInstance:Lcom/codemao/nemo/view/LinkMovementClickMethod;


# instance fields
.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/codemao/nemo/view/LinkMovementClickMethod;
    .registers 1

    .line 59
    sget-object v0, Lcom/codemao/nemo/view/LinkMovementClickMethod;->sInstance:Lcom/codemao/nemo/view/LinkMovementClickMethod;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/codemao/nemo/view/LinkMovementClickMethod;

    invoke-direct {v0}, Lcom/codemao/nemo/view/LinkMovementClickMethod;-><init>()V

    sput-object v0, Lcom/codemao/nemo/view/LinkMovementClickMethod;->sInstance:Lcom/codemao/nemo/view/LinkMovementClickMethod;

    .line 62
    :cond_b
    sget-object v0, Lcom/codemao/nemo/view/LinkMovementClickMethod;->sInstance:Lcom/codemao/nemo/view/LinkMovementClickMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 19
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_70

    .line 23
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 24
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 29
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 30
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 33
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 34
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 36
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 38
    array-length v3, v2

    if-eqz v3, :cond_6d

    const/4 p3, 0x0

    if-ne v0, v1, :cond_55

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/codemao/nemo/view/LinkMovementClickMethod;->lastClickTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long p2, v3, v5

    if-gez p2, :cond_6c

    .line 41
    aget-object p2, v2, p3

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_6c

    :cond_55
    if-nez v0, :cond_6c

    .line 44
    aget-object p1, v2, p3

    .line 45
    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    aget-object p3, v2, p3

    .line 46
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 44
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/codemao/nemo/view/LinkMovementClickMethod;->lastClickTime:J

    :cond_6c
    :goto_6c
    return v1

    .line 52
    :cond_6d
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 55
    :cond_70
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

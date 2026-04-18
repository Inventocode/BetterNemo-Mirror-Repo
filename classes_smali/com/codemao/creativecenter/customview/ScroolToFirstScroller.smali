.class public Lcom/codemao/creativecenter/customview/ScroolToFirstScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ScroolToFirstScroller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 6

    if-gt p3, p1, :cond_6

    if-lt p4, p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

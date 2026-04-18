.class public Lcom/codemao/nemo/view/banner/BannerScroller;
.super Landroid/widget/Scroller;
.source "BannerScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x320

    .line 10
    iput p1, p0, Lcom/codemao/nemo/view/banner/BannerScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/view/banner/BannerScroller;->mDuration:I

    return-void
.end method

.method public startScroll(IIII)V
    .registers 11

    .line 31
    iget v5, p0, Lcom/codemao/nemo/view/banner/BannerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12

    .line 26
    iget v5, p0, Lcom/codemao/nemo/view/banner/BannerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

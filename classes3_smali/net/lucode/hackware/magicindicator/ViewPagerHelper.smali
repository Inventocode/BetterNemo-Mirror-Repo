.class public Lnet/lucode/hackware/magicindicator/ViewPagerHelper;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"


# direct methods
.method public static bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    .line 12
    new-instance v0, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;-><init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ColorTransitionPagerTitleView;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;
.source "ColorTransitionPagerTitleView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDeselected(II)V
    .registers 3

    return-void
.end method

.method public onEnter(IIFZ)V
    .registers 5

    .line 31
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->mNormalColor:I

    iget p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->mSelectedColor:I

    invoke-static {p3, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/ArgbEvaluatorHolder;->eval(FII)I

    move-result p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onLeave(IIFZ)V
    .registers 5

    .line 25
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->mSelectedColor:I

    iget p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->mNormalColor:I

    invoke-static {p3, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/ArgbEvaluatorHolder;->eval(FII)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onSelected(II)V
    .registers 3

    return-void
.end method

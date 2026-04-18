.class public Lcom/codemao/nemo/listener/ShadowTransformer;
.super Ljava/lang/Object;
.source "ShadowTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;
    }
.end annotation


# static fields
.field public static MAX_ELEVATION_FACTOR:I = 0x7


# instance fields
.field private mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

.field private mLastOffset:F

.field private onCardChangeListener:Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;Lcom/codemao/nemo/adapter/CardAdapter;Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 19
    iput-object p2, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

    .line 20
    iput-object p3, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->onCardChangeListener:Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;

    return-void
.end method

.method private changeSelect(FI)V
    .registers 6

    .line 73
    iget v0, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mLastOffset:F

    const/high16 v1, 0x3f000000  # 0.5f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_12

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_12

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->onCardChangeListener:Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;

    invoke-interface {p1, p2}, Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;->change(I)V

    goto :goto_1f

    :cond_12
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1f

    .line 76
    iget-object p1, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->onCardChangeListener:Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;

    invoke-interface {p1, p2}, Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;->change(I)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 15

    .line 32
    iget-object p3, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

    invoke-interface {p3}, Lcom/codemao/nemo/adapter/CardAdapter;->getBaseElevation()F

    move-result p3

    .line 34
    iget v0, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mLastOffset:F

    const/4 v1, 0x1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_19

    add-int/lit8 v0, p1, 0x1

    sub-float v3, v2, p2

    goto :goto_1f

    :cond_19
    add-int/lit8 v0, p1, 0x1

    move v3, p2

    move v10, v0

    move v0, p1

    move p1, v10

    .line 46
    :goto_1f
    iget-object v4, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

    invoke-interface {v4}, Lcom/codemao/nemo/adapter/CardAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-gt p1, v4, :cond_87

    iget-object v4, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

    .line 47
    invoke-interface {v4}, Lcom/codemao/nemo/adapter/CardAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-le v0, v4, :cond_32

    goto :goto_87

    .line 51
    :cond_32
    iget-object v4, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

    invoke-interface {v4, v0}, Lcom/codemao/nemo/adapter/CardAdapter;->getCardViewAt(I)Landroidx/cardview/widget/CardView;

    move-result-object v0

    const-wide v4, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    if-eqz v0, :cond_59

    sub-float/2addr v2, v3

    float-to-double v8, v2

    mul-double v8, v8, v4

    add-double/2addr v8, v6

    double-to-float v8, v8

    .line 53
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 54
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 55
    sget v8, Lcom/codemao/nemo/listener/ShadowTransformer;->MAX_ELEVATION_FACTOR:I

    sub-int/2addr v8, v1

    int-to-float v8, v8

    mul-float v8, v8, p3

    mul-float v8, v8, v2

    add-float/2addr v8, p3

    invoke-virtual {v0, v8}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 59
    :cond_59
    iget-object v0, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mAdapter:Lcom/codemao/nemo/adapter/CardAdapter;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/adapter/CardAdapter;->getCardViewAt(I)Landroidx/cardview/widget/CardView;

    move-result-object v0

    if-eqz v0, :cond_78

    float-to-double v8, v3

    mul-double v8, v8, v4

    add-double/2addr v8, v6

    double-to-float v2, v8

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 63
    sget v2, Lcom/codemao/nemo/listener/ShadowTransformer;->MAX_ELEVATION_FACTOR:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float v1, v1, p3

    mul-float v1, v1, v3

    add-float/2addr p3, v1

    invoke-virtual {v0, p3}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 66
    :cond_78
    iget-object p3, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->onCardChangeListener:Lcom/codemao/nemo/listener/ShadowTransformer$OnCardChangeListener;

    if-eqz p3, :cond_85

    const/high16 p3, 0x3f000000  # 0.5f

    cmpl-float p3, v3, p3

    if-ltz p3, :cond_85

    .line 67
    invoke-direct {p0, v3, p1}, Lcom/codemao/nemo/listener/ShadowTransformer;->changeSelect(FI)V

    .line 69
    :cond_85
    iput p2, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mLastOffset:F

    :cond_87
    :goto_87
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/codemao/nemo/listener/ShadowTransformer;->mLastOffset:F

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

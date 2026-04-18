.class public Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "FitStatusBarRelativeLayout.java"


# instance fields
.field private statusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;->statusBarHeight:I

    .line 15
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;->statusBarHeight:I

    .line 20
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 5

    .line 31
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1a

    .line 33
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;->statusBarHeight:I

    .line 35
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p1

    iget v0, p0, Lcom/codemao/nemo/view/FitStatusBarRelativeLayout;->statusBarHeight:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

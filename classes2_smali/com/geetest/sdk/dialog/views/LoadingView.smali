.class public Lcom/geetest/sdk/dialog/views/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-direct {p0, p1, p4, p5}, Lcom/geetest/sdk/dialog/views/LoadingView;->a(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/geetest/sdk/dialog/views/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method private a(I)I
    .registers 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    return v0

    .line 69
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private a()V
    .registers 4

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 9

    .line 1
    invoke-virtual {p3}, Lcom/geetest/sdk/GT3ConfigBean;->getCorners()I

    move-result p3

    iput p3, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->a:I

    .line 2
    invoke-direct {p0}, Lcom/geetest/sdk/dialog/views/LoadingView;->a()V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const-string v0, "gt3_wait_progressdialog"

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const-string p3, "gt3_wait_ll"

    .line 5
    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    const-string v0, "gt3_wait_iv"

    .line 7
    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "LoadingView"

    if-nez p2, :cond_6b

    .line 10
    new-instance p2, Lcom/geetest/sdk/views/GT3GifView;

    invoke-direct {p2, p1}, Lcom/geetest/sdk/views/GT3GifView;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v2, Lcom/geetest/sdk/model/beans/e;

    invoke-direct {v2}, Lcom/geetest/sdk/model/beans/e;-><init>()V

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/e;->a()I

    move-result v2

    if-eqz v2, :cond_47

    .line 13
    invoke-virtual {p2, v2}, Lcom/geetest/sdk/views/GT3GifView;->setGifResource(I)V

    goto :goto_50

    :cond_47
    const-string v2, "gt3_new_bind_logo"

    .line 15
    invoke-static {p1, v2}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/geetest/sdk/views/GT3GifView;->setGifResource(I)V

    .line 17
    :goto_50
    invoke-virtual {p2}, Lcom/geetest/sdk/views/GT3GifView;->a()V

    .line 18
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41c00000  # 24.0f

    .line 19
    invoke-static {p1, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p1, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    invoke-virtual {v0, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "custom view is null"

    .line 21
    invoke-static {v1, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    .line 23
    :cond_6b
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->isGif()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 25
    new-instance v2, Lcom/geetest/sdk/views/GT3GifView;

    invoke-direct {v2, p1}, Lcom/geetest/sdk/views/GT3GifView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getIconRes()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/geetest/sdk/views/GT3GifView;->setGifResource(I)V

    .line 27
    invoke-virtual {v2}, Lcom/geetest/sdk/views/GT3GifView;->a()V

    .line 28
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/geetest/sdk/dialog/views/LoadingView;->a(I)I

    move-result v4

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/geetest/sdk/dialog/views/LoadingView;->a(I)I

    move-result p2

    invoke-direct {v3, v4, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "custom gif res"

    .line 31
    invoke-static {v1, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    .line 34
    :cond_9e
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->execute()V

    .line 35
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/geetest/sdk/dialog/views/LoadingView;->a(I)I

    move-result v3

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/geetest/sdk/dialog/views/LoadingView;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    :cond_c5
    invoke-virtual {v0, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "custom view"

    .line 42
    invoke-static {v1, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cd
    const-string p2, "gt3_wait_tv2"

    .line 46
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "gt3_wait_tvvv"

    .line 47
    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->getLoadingText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {}, Lcom/geetest/sdk/model/beans/Gt3GeetestText;->getSupportText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "gt3_wait_view1"

    .line 51
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 52
    invoke-static {}, Lcom/geetest/sdk/model/beans/f;->a()Z

    move-result v0

    if-eqz v0, :cond_10b

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_112

    :cond_10b
    const/4 v0, 0x4

    .line 56
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_112
    :try_start_112
    const-string p2, "gt3_dialog_shape"

    .line 60
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11b} :catch_11c

    goto :goto_120

    :catch_11c
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_120
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p4, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->a:I

    int-to-float p4, p4

    invoke-static {p3, p4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    .line 3
    new-instance p4, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->c:Landroid/graphics/Path;

    .line 5
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 6
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->c:Landroid/graphics/Path;

    int-to-float p2, p3

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p4, p2, p2, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

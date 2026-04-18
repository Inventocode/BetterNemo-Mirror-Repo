.class public Lcn/jzvd/JZResizeTextureView;
.super Landroid/view/TextureView;
.source "JZResizeTextureView.java"


# instance fields
.field protected mVideoSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcn/jzvd/JZResizeTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcn/jzvd/JZResizeTextureView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 34
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcn/jzvd/JZResizeTextureView;->mVideoSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 13

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JZResizeTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    float-to-int v0, v0

    .line 56
    iget-object v2, p0, Lcn/jzvd/JZResizeTextureView;->mVideoSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 57
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", videoHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_62

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_65

    :cond_62
    move v9, p2

    move p2, p1

    move p1, v9

    .line 68
    :cond_65
    invoke-static {v3, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    .line 69
    invoke-static {v2, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v4

    if-lez v3, :cond_106

    if-lez v2, :cond_106

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 75
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widthMeasureSpec  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "heightMeasureSpec ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x40000000  # 2.0f

    if-ne v0, p1, :cond_cf

    if-ne v5, p1, :cond_cf

    mul-int p1, v3, v6

    mul-int p2, v4, v2

    if-ge p1, p2, :cond_c8

    .line 86
    div-int v0, p1, v2

    goto :goto_f1

    :cond_c8
    if-le p1, p2, :cond_cd

    .line 88
    div-int p1, p2, v3

    goto :goto_df

    :cond_cd
    move v0, v4

    goto :goto_f1

    :cond_cf
    const/high16 p2, -0x80000000

    if-ne v0, p1, :cond_e2

    mul-int p1, v4, v2

    .line 93
    div-int/2addr p1, v3

    if-ne v5, p2, :cond_df

    if-le p1, v6, :cond_df

    mul-int v3, v3, v6

    .line 97
    div-int v0, v3, v2

    goto :goto_f1

    :cond_df
    :goto_df
    move v0, v4

    move v4, p1

    goto :goto_106

    :cond_e2
    if-ne v5, p1, :cond_f3

    mul-int p1, v6, v3

    .line 102
    div-int/2addr p1, v2

    if-ne v0, p2, :cond_f0

    if-le p1, v4, :cond_f0

    mul-int v2, v2, v4

    .line 106
    div-int p1, v2, v3

    goto :goto_df

    :cond_f0
    move v0, p1

    :goto_f1
    move v4, v6

    goto :goto_106

    :cond_f3
    if-ne v5, p2, :cond_fb

    if-le v2, v6, :cond_fb

    mul-int p1, v6, v3

    .line 115
    div-int/2addr p1, v2

    goto :goto_fd

    :cond_fb
    move v6, v2

    move p1, v3

    :goto_fd
    if-ne v0, p2, :cond_f0

    if-le p1, v4, :cond_f0

    mul-int v2, v2, v4

    .line 120
    div-int p1, v2, v3

    goto :goto_df

    .line 126
    :cond_106
    :goto_106
    invoke-virtual {p0, v0, v4}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .line 46
    invoke-virtual {p0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    .line 47
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 48
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_e
    return-void
.end method

.method public setVideoSize(Landroid/graphics/Point;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 38
    iget-object v0, p0, Lcn/jzvd/JZResizeTextureView;->mVideoSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 39
    iput-object p1, p0, Lcn/jzvd/JZResizeTextureView;->mVideoSize:Landroid/graphics/Point;

    .line 40
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_f
    return-void
.end method

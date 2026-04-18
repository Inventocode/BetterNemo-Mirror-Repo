.class public Lcom/codemao/nemo/view/UserAvatarFrameView;
.super Landroid/widget/FrameLayout;
.source "UserAvatarFrameView.java"


# instance fields
.field avatarSize:F

.field avatarTopMargin:F

.field hasShadow:Z

.field private isOfficial:Z

.field ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

.field ivFrame:Landroid/widget/ImageView;

.field private level:I

.field shadow:Landroid/view/View;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/UserAvatarFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/view/UserAvatarFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 24
    iput-boolean p4, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->hasShadow:Z

    .line 25
    iput-boolean p4, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->isOfficial:Z

    .line 26
    iput p4, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->level:I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/view/UserAvatarFrameView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0234

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0363

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    const v0, 0x7f0a043c

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const v0, 0x7f0a0969

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->shadow:Landroid/view/View;

    if-eqz p2, :cond_90

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/codemao/nemo/R$styleable;->UserAvatarFrameView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->avatarSize:F

    const/4 p3, 0x1

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->avatarTopMargin:F

    const/4 p2, 0x2

    .line 56
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->hasShadow:Z

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 59
    iget p2, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->avatarTopMargin:F

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    iget p2, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->avatarSize:F

    float-to-int p3, p2

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int p2, p2

    .line 61
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 62
    iget-object p1, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->shadow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iget p2, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->avatarSize:F

    const/high16 p3, 0x3f880000  # 1.0625f

    mul-float v0, p2, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 64
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const p2, 0x3f6c5048  # 0.9231f

    .line 65
    iget p3, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->avatarTopMargin:F

    mul-float p3, p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    iget-object p1, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->shadow:Landroid/view/View;

    iget-boolean p2, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->hasShadow:Z

    if-eqz p2, :cond_8b

    goto :goto_8d

    :cond_8b
    const/16 v1, 0x8

    :goto_8d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_90
    invoke-direct {p0}, Lcom/codemao/nemo/view/UserAvatarFrameView;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    if-eqz v0, :cond_7b

    .line 73
    iget-object v1, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-boolean v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->isOfficial:Z

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_28

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    const v1, 0x7f0804e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7b

    .line 79
    :cond_28
    iget v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->level:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v0, v2, :cond_67

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_55

    if-eq v0, v4, :cond_4c

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    goto :goto_7b

    .line 92
    :cond_4c
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    const v1, 0x7f0804e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7b

    .line 89
    :cond_55
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    const v1, 0x7f0804e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7b

    .line 86
    :cond_5e
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    const v1, 0x7f0804e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7b

    .line 81
    :cond_67
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/view/UserAvatarFrameView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    :cond_7b
    :goto_7b
    return-void
.end method

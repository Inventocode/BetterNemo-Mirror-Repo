.class public Lcom/ljwx/basetoolbar/CenterTitleBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "CenterTitleBar.java"


# instance fields
.field mCenteredSubtitleTextAppearance:I

.field mCenteredSubtitleTextColor:I

.field mCenteredTitleTextAppearance:I

.field mCenteredTitleTextColor:I

.field mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field vCenteredBox:Landroid/widget/LinearLayout;

.field vCenteredSubtitle:Landroid/widget/TextView;

.field public vCenteredTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p2, p1}, Lcom/ljwx/basetoolbar/CenterTitleBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/ljwx/basetoolbar/CenterTitleBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ensureCenteredBox()V
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredBox:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1e

    .line 61
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredBox:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredBox:Landroid/widget/LinearLayout;

    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .registers 6

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 47
    sget v0, Lcom/ljwx/basetoolbar/R$id;->base_app_toolbar:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 50
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->Toolbar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextAppearance:I

    .line 52
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextAppearance:I

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextAppearance:I

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/basetoolbar/CenterTitleBar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextAppearance:I

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/basetoolbar/CenterTitleBar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 121
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    if-nez v0, :cond_53

    .line 122
    invoke-direct {p0}, Lcom/ljwx/basetoolbar/CenterTitleBar;->ensureCenteredBox()V

    .line 123
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 125
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextAppearance:I

    if-eqz v0, :cond_43

    .line 129
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    :cond_43
    iget v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextColor:I

    if-eqz v0, :cond_4c

    .line 132
    iget-object v1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :cond_4c
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    :cond_53
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5a

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_5a
    iput-object p1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 153
    iput p2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextAppearance:I

    .line 154
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 155
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 3

    .line 145
    iput p1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredSubtitleTextColor:I

    .line 146
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 75
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    if-nez v0, :cond_54

    .line 76
    invoke-direct {p0}, Lcom/ljwx/basetoolbar/CenterTitleBar;->ensureCenteredBox()V

    .line 77
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 79
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 80
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    iget v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextAppearance:I

    if-eqz v0, :cond_38

    .line 82
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_38
    iget v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextColor:I

    if-eqz v0, :cond_41

    .line 85
    iget-object v1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :cond_41
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 91
    :cond_54
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5b

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_5b
    iput-object p1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 107
    iput p2, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextAppearance:I

    .line 108
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 109
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 3

    .line 99
    iput p1, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->mCenteredTitleTextColor:I

    .line 100
    iget-object v0, p0, Lcom/ljwx/basetoolbar/CenterTitleBar;->vCenteredTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

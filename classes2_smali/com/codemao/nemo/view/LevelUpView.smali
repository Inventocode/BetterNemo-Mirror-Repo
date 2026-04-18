.class public Lcom/codemao/nemo/view/LevelUpView;
.super Landroid/widget/RelativeLayout;
.source "LevelUpView.java"


# instance fields
.field private authorlevel:I

.field confirmClickLitstener:Landroid/view/View$OnClickListener;

.field private consumelevel:I

.field from:I

.field ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

.field ivAvatarFrame:Landroid/widget/ImageView;

.field ivTop:Landroid/widget/ImageView;

.field tvConfirm:Landroid/widget/TextView;

.field tvLevelName:Landroid/widget/TextView;

.field tvLevelup:Landroid/widget/TextView;

.field tvMedalname1:Landroid/widget/TextView;

.field tvMedalname2:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILandroid/view/View$OnClickListener;)V
    .registers 7

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput p2, p0, Lcom/codemao/nemo/view/LevelUpView;->type:I

    .line 45
    iput p3, p0, Lcom/codemao/nemo/view/LevelUpView;->from:I

    .line 46
    iput p4, p0, Lcom/codemao/nemo/view/LevelUpView;->authorlevel:I

    .line 47
    iput p5, p0, Lcom/codemao/nemo/view/LevelUpView;->consumelevel:I

    .line 48
    iput-object p6, p0, Lcom/codemao/nemo/view/LevelUpView;->confirmClickLitstener:Landroid/view/View$OnClickListener;

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/LevelUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/LevelUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/LevelUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0235

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0821

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    const p1, 0x7f0a0362

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const p1, 0x7f0a00b6

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivTop:Landroid/widget/ImageView;

    const p1, 0x7f0a0875

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvLevelup:Landroid/widget/TextView;

    const p1, 0x7f0a0874

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvLevelName:Landroid/widget/TextView;

    const p1, 0x7f0a0884

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    const p1, 0x7f0a0885

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname2:Landroid/widget/TextView;

    const p1, 0x7f0a04c6

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p1, 0x7f0a0363

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    .line 83
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_80

    .line 84
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_93

    .line 85
    :cond_80
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 86
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 88
    :cond_93
    :goto_93
    iget p1, p0, Lcom/codemao/nemo/view/LevelUpView;->from:I

    const-string v0, "去看看"

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-nez p1, :cond_a1

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    :cond_a1
    if-eq p1, v2, :cond_b8

    if-ne p1, v3, :cond_a6

    goto :goto_b8

    :cond_a6
    if-ne p1, v1, :cond_b0

    .line 93
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    const-string v4, "完成"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 95
    :cond_b0
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    const-string v4, "继续发布"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 91
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    const-string v4, "继续评论"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_bf
    iget p1, p0, Lcom/codemao/nemo/view/LevelUpView;->type:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_c9

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_c9
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget p1, p0, Lcom/codemao/nemo/view/LevelUpView;->consumelevel:I

    const/high16 v0, 0x40000000  # 2.0f

    const/4 v5, 0x0

    if-eq p1, v1, :cond_10c

    if-eq p1, v4, :cond_103

    if-eq p1, v2, :cond_fa

    if-eq p1, v3, :cond_f1

    .line 118
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    goto :goto_120

    .line 115
    :cond_f1
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    const v0, 0x7f0804e6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_120

    .line 112
    :cond_fa
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    const v0, 0x7f0804e4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_120

    .line 109
    :cond_103
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    const v0, 0x7f0804e2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_120

    .line 104
    :cond_10c
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 124
    :goto_120
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/view/LevelUpView$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/LevelUpView$1;-><init>(Lcom/codemao/nemo/view/LevelUpView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget p1, p0, Lcom/codemao/nemo/view/LevelUpView;->type:I

    if-eq p1, v1, :cond_164

    if-eq p1, v4, :cond_131

    goto :goto_196

    .line 147
    :cond_131
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    const v0, 0x7f0800ab

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvLevelup:Landroid/widget/TextView;

    const v0, 0x7f080078

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivTop:Landroid/widget/ImageView;

    const v0, 0x7f0804f3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvLevelName:Landroid/widget/TextView;

    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumLevelNames:Ljava/util/HashMap;

    iget v1, p0, Lcom/codemao/nemo/view/LevelUpView;->consumelevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Lcom/codemao/nemo/view/LevelUpView;->setConsumeUI()V

    goto :goto_196

    .line 140
    :cond_164
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    const v0, 0x7f08007a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvLevelup:Landroid/widget/TextView;

    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 142
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->ivTop:Landroid/widget/ImageView;

    const v0, 0x7f0804f4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvLevelName:Landroid/widget/TextView;

    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    iget v1, p0, Lcom/codemao/nemo/view/LevelUpView;->authorlevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0}, Lcom/codemao/nemo/view/LevelUpView;->setAuthorUI()V

    :goto_196
    return-void
.end method

.method private setAuthorUI()V
    .registers 7

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget v0, p0, Lcom/codemao/nemo/view/LevelUpView;->authorlevel:I

    const/4 v1, 0x1

    const/high16 v2, 0x42100000  # 36.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_a6

    const/4 v1, 0x2

    const-string v5, "称号勋章"

    if-eq v0, v1, :cond_85

    const/4 v1, 0x3

    if-eq v0, v1, :cond_64

    const/4 v1, 0x4

    if-eq v0, v1, :cond_42

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    goto/16 :goto_ef

    .line 190
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ef

    .line 184
    :cond_42
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ef

    .line 178
    :cond_64
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_ef

    .line 172
    :cond_85
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_ef

    .line 161
    :cond_a6
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    const-string v1, "评论权限"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    invoke-virtual {v0, v3, v3, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname2:Landroid/widget/TextView;

    const-string v1, "发布权限"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname2:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_ef
    return-void
.end method

.method private setConsumeUI()V
    .registers 8

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget v0, p0, Lcom/codemao/nemo/view/LevelUpView;->consumelevel:I

    const/4 v1, 0x1

    const-string v2, "青铜头像框"

    const v3, 0x7f0804e2

    const/high16 v4, 0x42100000  # 36.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v1, :cond_82

    const/4 v1, 0x2

    if-eq v0, v1, :cond_82

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3c

    .line 222
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v5, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 216
    :cond_3c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    const-string v1, "黄金头像框"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 210
    :cond_5f
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    const-string v1, "白银头像框"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 204
    :cond_82
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v5, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    iget-object v1, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView;->tvMedalname1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9f
    return-void
.end method

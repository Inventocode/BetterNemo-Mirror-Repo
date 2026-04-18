.class public Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "CreateCustomDialogPopTwo.java"


# instance fields
.field private cancelStr:Ljava/lang/String;

.field private confirmStr:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentStrResId:I

.field ivTop:Landroid/widget/ImageView;

.field private leftClickListener:Landroid/view/View$OnClickListener;

.field private leftTextColor:I

.field private noticeStr:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rightBgResourceId:I

.field private rightClickListener:Landroid/view/View$OnClickListener;

.field private rightColorId:I

.field private topResourceId:I

.field tvCancel:Landroid/widget/TextView;

.field tvConfirm:Landroid/widget/TextView;

.field tvContent:Landroid/widget/TextView;

.field tvNotice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightColorId:I

    .line 37
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightBgResourceId:I

    .line 38
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftTextColor:I

    .line 39
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->topResourceId:I

    .line 41
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->contentStrResId:I

    .line 56
    new-instance p1, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->content:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method protected doShowAnimation()V
    .registers 3

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v0, :cond_13

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 211
    :cond_13
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doShowAnimation()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 53
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_custom_dialog_create_two:I

    return v0
.end method

.method public leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->cancelStr:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method protected onCreate()V
    .registers 6

    .line 69
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 70
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_top:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->ivTop:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvContent:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_notice:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvNotice:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3f

    .line 76
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_46

    .line 78
    :cond_3f
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :goto_46
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_50

    .line 81
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_57

    .line 83
    :cond_50
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :goto_57
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->cancelStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 87
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->cancelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_66
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->noticeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_76

    .line 90
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_83

    .line 92
    :cond_76
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvNotice:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvNotice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->noticeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_83
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftTextColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_97

    .line 96
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftTextColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_97
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->topResourceId:I

    if-eq v0, v2, :cond_a0

    .line 99
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->ivTop:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_a0
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightBgResourceId:I

    if-eq v0, v2, :cond_a9

    .line 102
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 104
    :cond_a9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->confirmStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->confirmStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_b8
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->content:Ljava/lang/String;

    if-eqz v0, :cond_d0

    .line 108
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->content:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 110
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_d0
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->contentStrResId:I

    if-eq v0, v2, :cond_d9

    .line 114
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :cond_d9
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightColorId:I

    if-eq v0, v2, :cond_ec

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightColorId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ec
    return-void
.end method

.method public rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->confirmStr:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 159
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->leftClickListener:Landroid/view/View$OnClickListener;

    .line 160
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public setNoticeStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->noticeStr:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvNotice:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setRightBgResource(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 166
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightBgResourceId:I

    .line 167
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_9
    return-object p0
.end method

.method public setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 197
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->rightClickListener:Landroid/view/View$OnClickListener;

    .line 198
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 199
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public setTopResource(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
    .registers 3

    .line 173
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->topResourceId:I

    .line 174
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;->ivTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    return-object p0
.end method

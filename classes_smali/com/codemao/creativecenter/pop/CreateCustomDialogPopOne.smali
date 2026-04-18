.class public Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "CreateCustomDialogPopOne.java"


# instance fields
.field private cancelStr:Ljava/lang/String;

.field private confirmStr:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentStrId:I

.field private leftClickListener:Landroid/view/View$OnClickListener;

.field private leftTextColor:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rightBgResourceId:I

.field private rightClickListener:Landroid/view/View$OnClickListener;

.field private rightColorId:I

.field private title:Ljava/lang/String;

.field tvCancel:Landroid/widget/TextView;

.field tvConfirm:Landroid/widget/TextView;

.field tvContent:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightColorId:I

    .line 35
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStrId:I

    .line 36
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBgResourceId:I

    .line 37
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftTextColor:I

    .line 52
    new-instance p1, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->content:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public contentStrId(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 152
    iput p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStrId:I

    .line 153
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    return-object p0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 49
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_custom_dialog_create:I

    return v0
.end method

.method public leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->cancelStr:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method protected onCreate()V
    .registers 7

    .line 65
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 66
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_35

    .line 71
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3c

    .line 73
    :cond_35
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :goto_3c
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_46

    .line 76
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4d

    .line 78
    :cond_46
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :goto_4d
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->title:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6c

    .line 84
    :cond_60
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->cancelStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->cancelStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_7b
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftTextColor:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_8f

    .line 92
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftTextColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :cond_8f
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBgResourceId:I

    if-eq v0, v3, :cond_98

    .line 95
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    :cond_98
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->confirmStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 98
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->confirmStr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_a7
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->content:Ljava/lang/String;

    if-eqz v0, :cond_bf

    .line 101
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->content:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 103
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_bf
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStrId:I

    if-eq v0, v3, :cond_cf

    .line 107
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStrId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :cond_cf
    iget v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightColorId:I

    if-eq v0, v3, :cond_e2

    .line 111
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightColorId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e2
    return-void
.end method

.method public rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->confirmStr:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftClickListener:Landroid/view/View$OnClickListener;

    .line 167
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 187
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightClickListener:Landroid/view/View$OnClickListener;

    .line 188
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->title:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 127
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21

    .line 129
    :cond_14
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_21
    :goto_21
    return-object p0
.end method

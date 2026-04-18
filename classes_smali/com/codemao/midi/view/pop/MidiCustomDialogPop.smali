.class public Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "MidiCustomDialogPop.java"


# instance fields
.field private cancelStr:Ljava/lang/String;

.field private confirmStr:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private leftClickListener:Landroid/view/View$OnClickListener;

.field private leftTextColor:I

.field private final onClickListener:Landroid/view/View$OnClickListener;

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

    .line 37
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightColorId:I

    .line 33
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightBgResourceId:I

    .line 34
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->leftTextColor:I

    .line 40
    sget-object p1, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p1}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    .line 51
    new-instance p1, Lcom/codemao/midi/view/pop/MidiCustomDialogPop$1;

    invoke-direct {p1, p0}, Lcom/codemao/midi/view/pop/MidiCustomDialogPop$1;-><init>(Lcom/codemao/midi/view/pop/MidiCustomDialogPop;)V

    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public contentStr(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->content:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 48
    sget v0, Lcom/codemao/midi/R$layout;->midi_creative_custom_dialog_create:I

    return v0
.end method

.method public leftBtnStr(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->cancelStr:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method protected onCreate()V
    .registers 6

    .line 62
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 63
    sget v0, Lcom/codemao/midi/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/codemao/midi/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvTitle:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/codemao/midi/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/codemao/midi/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvContent:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->leftClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_35

    .line 68
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3c

    .line 70
    :cond_35
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :goto_3c
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_46

    .line 73
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4d

    .line 75
    :cond_46
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_4d
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->title:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz v0, :cond_6c

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 79
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6c

    .line 81
    :cond_5f
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->cancelStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 86
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->cancelStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_7b
    iget v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->leftTextColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8f

    .line 89
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->leftTextColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :cond_8f
    iget v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightBgResourceId:I

    if-eq v0, v2, :cond_98

    .line 92
    iget-object v3, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    :cond_98
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->confirmStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 95
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->confirmStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_a7
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->content:Ljava/lang/String;

    if-eqz v0, :cond_bf

    .line 98
    iget-object v3, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->content:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 100
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_bf
    iget v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightColorId:I

    if-eq v0, v2, :cond_d2

    .line 104
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightColorId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d2
    return-void
.end method

.method public rightBtnStr(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->confirmStr:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->leftClickListener:Landroid/view/View$OnClickListener;

    .line 153
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/midi/view/pop/MidiCustomDialogPop;
    .registers 3

    .line 173
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->rightClickListener:Landroid/view/View$OnClickListener;

    .line 174
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiCustomDialogPop;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

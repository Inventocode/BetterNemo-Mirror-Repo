.class public Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
.super Landroid/app/Dialog;
.source "CustomDialogTypeOne.java"


# instance fields
.field private cancelStr:Ljava/lang/String;

.field private confirmStr:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentStrId:I

.field private isRightTextVisible:Z

.field ivTopCat:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private leftClickListener:Landroid/view/View$OnClickListener;

.field private leftTextColor:I

.field private mContext:Landroid/content/Context;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rightBgResourceId:I

.field private rightClickListener:Landroid/view/View$OnClickListener;

.field private rightColorId:I

.field private title:Ljava/lang/String;

.field private topCatType:I

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f130338

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStrId:I

    .line 49
    iput v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightColorId:I

    .line 50
    iput v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBgResourceId:I

    .line 51
    iput v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftTextColor:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatType:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->isRightTextVisible:Z

    .line 246
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne$1;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    iput-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->onClickListener:Landroid/view/View$OnClickListener;

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->mContext:Landroid/content/Context;

    return-void
.end method

.method private init()V
    .registers 7

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d010b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x2

    .line 176
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 177
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x3e99999a  # 0.3f

    .line 178
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 179
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 180
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 181
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_40

    .line 183
    iget-object v1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_47

    .line 185
    :cond_40
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :goto_47
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_51

    .line 188
    iget-object v1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_58

    .line 190
    :cond_51
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_58
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->title:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz v0, :cond_71

    .line 193
    iget-object v2, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_76

    .line 198
    :cond_71
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->cancelStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->cancelStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_85
    iget v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftTextColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9b

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftTextColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :cond_9b
    iget v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBgResourceId:I

    if-eq v0, v2, :cond_a4

    .line 207
    iget-object v4, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 209
    :cond_a4
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->confirmStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 210
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->confirmStr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_b3
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->content:Ljava/lang/String;

    if-eqz v0, :cond_cc

    .line 213
    iget-object v4, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->content:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d1

    .line 218
    :cond_cc
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :cond_d1
    :goto_d1
    iget v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStrId:I

    if-eq v0, v2, :cond_e1

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    iget v4, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStrId:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :cond_e1
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->isRightTextVisible:Z

    if-eqz v4, :cond_e8

    goto :goto_ea

    :cond_e8
    const/16 v3, 0x8

    :goto_ea
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightColorId:I

    if-eq v0, v2, :cond_102

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightColorId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    :cond_102
    iget v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatType:I

    const v1, 0x7f0e0050

    if-eqz v0, :cond_11b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_112

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->ivTopCat:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_120

    .line 229
    :cond_112
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->ivTopCat:Landroid/widget/ImageView;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_120

    .line 232
    :cond_11b
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->ivTopCat:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_120
    return-void
.end method


# virtual methods
.method bodyClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 243
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->content:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public contentStrId(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 127
    iput p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStrId:I

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    return-object p0
.end method

.method public leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->cancelStr:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->init()V

    return-void
.end method

.method public rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->confirmStr:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 142
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftClickListener:Landroid/view/View$OnClickListener;

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightClickListener:Landroid/view/View$OnClickListener;

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method public setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 106
    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->isRightTextVisible:Z

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    .line 108
    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    return-object p0
.end method

.method public titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->title:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->title:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->tvTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1a
    return-object p0
.end method

.method public topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 5

    .line 76
    iput p1, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatType:I

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->ivTopCat:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    const v1, 0x7f0e0050

    if-eqz p1, :cond_19

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    :cond_12
    const p1, 0x7f0e004f

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    .line 83
    :cond_19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1c
    :goto_1c
    return-object p0
.end method

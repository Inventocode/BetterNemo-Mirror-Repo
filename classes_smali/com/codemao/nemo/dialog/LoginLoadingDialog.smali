.class public Lcom/codemao/nemo/dialog/LoginLoadingDialog;
.super Landroid/app/Dialog;
.source "LoginLoadingDialog.java"


# instance fields
.field private content:Ljava/lang/String;

.field private imageRes:I

.field ivIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f130354

    .line 41
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->imageRes:I

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private init()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0232

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 75
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 76
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 78
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 79
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 80
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 81
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_46
    iget v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->imageRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_56

    .line 87
    iget-object v1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5d

    .line 90
    :cond_56
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->ivIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_5d
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 93
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->init()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    .line 140
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .registers 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    .line 102
    :cond_11
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_14
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_14} :catch_16

    goto :goto_1a

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    .line 104
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 124
    :cond_7
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->content:Ljava/lang/String;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->imageRes:I

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->ivIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1c

    const/16 v0, 0x8

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :cond_1c
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->show()V

    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .registers 4

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 110
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->content:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_f
    iput p2, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->imageRes:I

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->ivIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1e

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->ivIcon:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1e
    return-void
.end method

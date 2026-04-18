.class public Lcom/codemao/nemo/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private content:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f130354

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f130354

    .line 40
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->content:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0232

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 69
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 72
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 73
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->content:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 78
    iget-object v1, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_40
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 81
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/LoadingDialog;->init()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->content:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public show()V
    .registers 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    .line 90
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

    .line 92
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_1a
    return-void
.end method

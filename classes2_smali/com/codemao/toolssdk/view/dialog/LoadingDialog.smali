.class public Lcom/codemao/toolssdk/view/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private content:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$mNVe4DfaGYoavlnK83bPhW1CCSY(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 33
    sget v0, Lcom/codemao/toolssdk/R$style;->toolsdk_toast_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p2, p0, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->content:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private init()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_toast_dialog:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    sget v1, Lcom/codemao/toolssdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/codemao/toolssdk/view/dialog/LoadingDialog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/toolssdk/view/dialog/LoadingDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v1, Lcom/codemao/toolssdk/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 64
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 65
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 70
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private static synthetic lambda$init$0(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1b

    .line 94
    :cond_11
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 95
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    nop

    :catch_1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->init()V

    return-void
.end method

.method public show()V
    .registers 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 79
    :cond_11
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 82
    :cond_18
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    nop

    :catch_1c
    :cond_1c
    :goto_1c
    return-void
.end method

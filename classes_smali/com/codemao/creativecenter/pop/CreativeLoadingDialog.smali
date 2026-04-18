.class public Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;
.super Landroid/app/Dialog;
.source "CreativeLoadingDialog.java"


# instance fields
.field private content:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 36
    sget v0, Lcom/codemao/creativecenter/R$style;->creative_toast_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->content:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_layout_toast_dialog:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 65
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->tvContent:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 68
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 69
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->content:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 74
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_46
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 77
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;->init()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .registers 1

    .line 83
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

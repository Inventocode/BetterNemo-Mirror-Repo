.class public Lcom/codemao/nemo/view/NemoAlertDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "NemoAlertDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dialogListener:Lcom/codemao/nemo/listener/NemoDialogListener;

.field private mCancel:Landroid/widget/TextView;

.field private mConfirm:Landroid/widget/TextView;

.field private mContent:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3aDKpGqNJ5MMav9XexcavvpGLto(Lcom/codemao/nemo/view/NemoAlertDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/NemoAlertDialog;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3eEF0xiHeWWw9ADOzhOBD2AixGg(Lcom/codemao/nemo/view/NemoAlertDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/NemoAlertDialog;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/listener/NemoDialogListener;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->dialogListener:Lcom/codemao/nemo/listener/NemoDialogListener;

    .line 27
    invoke-direct {p0}, Lcom/codemao/nemo/view/NemoAlertDialog;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0821

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mConfirm:Landroid/widget/TextView;

    const v1, 0x7f0a080c

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mCancel:Landroid/widget/TextView;

    .line 34
    new-instance v2, Lcom/codemao/nemo/view/NemoAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/NemoAlertDialog$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/NemoAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mConfirm:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/nemo/view/NemoAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/NemoAlertDialog$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/view/NemoAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a018c

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mContent:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .registers 2

    .line 34
    iget-object p1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->dialogListener:Lcom/codemao/nemo/listener/NemoDialogListener;

    invoke-interface {p1}, Lcom/codemao/nemo/listener/NemoDialogListener;->cancel()V

    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .registers 2

    .line 35
    iget-object p1, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->dialogListener:Lcom/codemao/nemo/listener/NemoDialogListener;

    invoke-interface {p1}, Lcom/codemao/nemo/listener/NemoDialogListener;->confirm()V

    return-void
.end method


# virtual methods
.method public setCancel(Ljava/lang/String;)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setConfirm(Ljava/lang/String;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/view/NemoAlertDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDialog()V
    .registers 7

    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe70a3d70a3d70aL  # 0.72

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a  # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f130334

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

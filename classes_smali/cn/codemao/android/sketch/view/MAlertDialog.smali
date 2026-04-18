.class public Lcn/codemao/android/sketch/view/MAlertDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "MAlertDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dialogListener:Lcn/codemao/android/sketch/listener/DialogListener;


# direct methods
.method public static synthetic $r8$lambda$6RDBh98fh8b8AV_MYgfLj8noUI8(Lcn/codemao/android/sketch/view/MAlertDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/MAlertDialog;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pI8QDBl27nmn8O9z-ieEti_SIYI(Lcn/codemao/android/sketch/view/MAlertDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/MAlertDialog;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/codemao/android/sketch/listener/DialogListener;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcn/codemao/android/sketch/view/MAlertDialog;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcn/codemao/android/sketch/view/MAlertDialog;->dialogListener:Lcn/codemao/android/sketch/listener/DialogListener;

    .line 23
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/MAlertDialog;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcn/codemao/android/sketch/view/MAlertDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$layout;->dialog_sketch:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lcn/codemao/android/sketch/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/codemao/android/sketch/view/MAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/view/MAlertDialog$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/MAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v1, Lcn/codemao/android/sketch/R$id;->tv_quit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/codemao/android/sketch/view/MAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/view/MAlertDialog$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/view/MAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .registers 2

    .line 42
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .registers 2

    .line 43
    iget-object p1, p0, Lcn/codemao/android/sketch/view/MAlertDialog;->dialogListener:Lcn/codemao/android/sketch/listener/DialogListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/listener/DialogListener;->sure()V

    return-void
.end method


# virtual methods
.method public showDialog()V
    .registers 7

    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe70a3d70a3d70aL  # 0.72

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a  # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$style;->dialog_anim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.class public Lcom/codemao/nemo/dialog/LaterCheckDialog;
.super Landroid/app/Dialog;
.source "LaterCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;

.field cbNoNotice:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field tvKnow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f130338

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/LaterCheckDialog;)Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog;->callback:Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d010d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x2

    .line 51
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog;->tvKnow:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/LaterCheckDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/LaterCheckDialog$1;-><init>(Lcom/codemao/nemo/dialog/LaterCheckDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/LaterCheckDialog;->init()V

    return-void
.end method

.method public setCallback(Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LaterCheckDialog;->callback:Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;

    return-void
.end method

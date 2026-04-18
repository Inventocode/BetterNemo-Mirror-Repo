.class public Lcom/codemao/nemo/dialog/CoverEditBottomDialog;
.super Landroid/app/Dialog;
.source "CoverEditBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;
    }
.end annotation


# instance fields
.field private chooseEditListener:Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;

.field private mContext:Landroid/app/Activity;

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;)V
    .registers 4

    const v0, 0x7f13034c

    .line 40
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->mContext:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->chooseEditListener:Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;

    return-void
.end method

.method private init()V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    .line 58
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 59
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/CoverEditBottomDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog$1;-><init>(Lcom/codemao/nemo/dialog/CoverEditBottomDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method choosePhoto(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->chooseEditListener:Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;

    if-nez p1, :cond_5

    return-void

    .line 86
    :cond_5
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;->choosePhoto()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->init()V

    return-void
.end method

.method toEditDefault(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/dialog/CoverEditBottomDialog;->chooseEditListener:Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;

    if-nez p1, :cond_5

    return-void

    .line 78
    :cond_5
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;->toEditDefault()V

    return-void
.end method

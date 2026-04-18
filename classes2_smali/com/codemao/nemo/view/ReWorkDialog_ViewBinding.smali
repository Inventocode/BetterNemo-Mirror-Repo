.class public Lcom/codemao/nemo/view/ReWorkDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ReWorkDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/ReWorkDialog;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a037b

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->ivClose:Landroid/widget/ImageView;

    .line 31
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0697

    const-string v2, "field \'rlGoToWork\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->rlGoToWork:Landroid/widget/RelativeLayout;

    .line 32
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0615

    const-string v2, "field \'ivRework01\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->ivRework01:Landroid/widget/ImageView;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0617

    const-string v2, "field \'ivRework03\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->ivRework03:Landroid/widget/ImageView;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06a0

    const-string v2, "field \'rlNetFail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->rlNetFail:Landroid/widget/RelativeLayout;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0699

    const-string v2, "field \'rlLaterOpen\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->rlLaterOpen:Landroid/widget/RelativeLayout;

    .line 36
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04d7

    const-string v2, "field \'llPgrogress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->llPgrogress:Landroid/widget/LinearLayout;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08e8

    const-string v2, "field \'tvSuccess\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvSuccess:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0826

    const-string v2, "field \'tvCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvCount:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a05ca

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0897

    const-string v2, "field \'tvNetTry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvNetTry:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08a2

    const-string v2, "field \'tvOpenLater\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvOpenLater:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a085d

    const-string v2, "field \'tvGoToWork\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvGoToWork:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

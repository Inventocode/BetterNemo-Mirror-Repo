.class public Lcom/codemao/nemo/view/GenerateMiaoCodeDialog_ViewBinding;
.super Ljava/lang/Object;
.source "GenerateMiaoCodeDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;Landroid/view/View;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a037b

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivClose:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a069e

    const-string v2, "field \'rlLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlLoading:Landroid/widget/RelativeLayout;

    .line 31
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06b2

    const-string v2, "field \'rlSuccess\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlSuccess:Landroid/widget/RelativeLayout;

    .line 32
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0694

    const-string v2, "field \'rlFail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlFail:Landroid/widget/RelativeLayout;

    .line 33
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06a2

    const-string v2, "field \'rlOpening\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlOpening:Landroid/widget/RelativeLayout;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a068f

    const-string v2, "field \'rlDownloadSuccess\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlDownloadSuccess:Landroid/widget/RelativeLayout;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06a1

    const-string v2, "field \'rlNotSupport\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlNotSupport:Landroid/widget/RelativeLayout;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d9

    const-string v2, "field \'tvParse\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvParse:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06a0

    const-string v2, "field \'rlNetFail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlNetFail:Landroid/widget/RelativeLayout;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0897

    const-string v2, "field \'tvNetTry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNetTry:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0908

    const-string v2, "field \'tvTry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvTry:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d7

    const-string v2, "field \'tvOpen\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvOpen:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d8

    const-string v2, "field \'tvOpenKn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvOpenKn:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0870

    const-string v2, "field \'tvLater\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvLater:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0871

    const-string v2, "field \'tvLaterOpening\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvLaterOpening:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03cb

    const-string v2, "field \'ivLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivLoading:Landroid/widget/ImageView;

    .line 45
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03ec

    const-string v2, "field \'ivOpening\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivOpening:Landroid/widget/ImageView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0892

    const-string v2, "field \'tvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvName:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a089d

    const-string v2, "field \'tvNotSupportName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNotSupportName:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0583

    const-string v2, "field \'tvNotSupportShowLater\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNotSupportShowLater:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a089c

    const-string v2, "field \'tvNotSupportButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNotSupportButton:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a05ca

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

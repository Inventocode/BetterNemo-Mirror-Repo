.class public Lcom/codemao/nemo/view/ReactUploadDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ReactUploadDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/ReactUploadDialog;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a05ca

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReactUploadDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00fc

    const-string v2, "field \'tvCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ReactUploadDialog;->tvCancel:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a09c9

    const-string v2, "field \'ivLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/view/ReactUploadDialog;->ivLoading:Landroid/widget/ImageView;

    return-void
.end method

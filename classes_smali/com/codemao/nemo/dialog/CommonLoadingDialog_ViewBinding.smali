.class public Lcom/codemao/nemo/dialog/CommonLoadingDialog_ViewBinding;
.super Ljava/lang/Object;
.source "CommonLoadingDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/CommonLoadingDialog;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03b8

    const-string v2, "field \'iv_icon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/dialog/CommonLoadingDialog;->iv_icon:Landroid/widget/ImageView;

    return-void
.end method

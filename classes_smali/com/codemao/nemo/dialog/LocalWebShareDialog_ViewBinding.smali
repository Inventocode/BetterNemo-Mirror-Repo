.class public Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding;
.super Ljava/lang/Object;
.source "LocalWebShareDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog;Landroid/view/View;)V
    .registers 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a080c

    const-string v2, "field \'tvCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->tvCancel:Landroid/widget/ImageView;

    const v0, 0x7f0a04a3

    const-string v1, "field \'llShareWechat\' and method \'onShare\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareWechat\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    .line 39
    new-instance v0, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/LocalWebShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a1

    const-string v1, "field \'llShareQQ\' and method \'onShare\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareQQ\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    .line 48
    new-instance v0, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$2;-><init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/LocalWebShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a0

    const-string v1, "field \'llShareLink\' and method \'onShare\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llShareLink\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareLink:Landroid/widget/LinearLayout;

    .line 57
    new-instance v0, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding$3;-><init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/LocalWebShareDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ShareDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/ShareDialog;Landroid/view/View;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a080c

    const-string v2, "field \'tvCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareDialog;->tvCancel:Landroid/widget/ImageView;

    const v0, 0x7f0a04a3

    const-string v1, "field \'llShareWechat\' and method \'onShare\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareWechat\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    .line 43
    new-instance v0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/ShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a049f

    const-string v1, "field \'llShareCircle\' and method \'onShare\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareCircle\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    .line 52
    new-instance v0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$2;-><init>(Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/ShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a1

    const-string v1, "field \'llShareQQ\' and method \'onShare\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 59
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareQQ\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    .line 61
    new-instance v0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$3;-><init>(Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/ShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a2

    const-string v1, "field \'llShareQzone\' and method \'onShare\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareQzone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    .line 70
    new-instance v0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$4;-><init>(Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/ShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a0

    const-string v1, "field \'llShareLink\' and method \'onShare\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 77
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llShareLink\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareDialog;->llShareLink:Landroid/widget/LinearLayout;

    .line 79
    new-instance v0, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding$5;-><init>(Lcom/codemao/nemo/dialog/ShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/ShareDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

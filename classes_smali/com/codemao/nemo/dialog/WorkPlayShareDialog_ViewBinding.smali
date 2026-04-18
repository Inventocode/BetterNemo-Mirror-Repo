.class public Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;
.super Ljava/lang/Object;
.source "WorkPlayShareDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;Landroid/view/View;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a04a3

    const-string v1, "field \'llShareWechat\' and method \'onShare\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareWechat\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    .line 46
    new-instance v0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a049f

    const-string v1, "field \'llShareCircle\' and method \'onShare\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareCircle\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    .line 55
    new-instance v0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$2;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0657

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a04a1

    const-string v1, "field \'llShareQQ\' and method \'onShare\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareQQ\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    .line 65
    new-instance v0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$3;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a062a

    const-string v2, "field \'rlBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlBottom:Landroid/widget/RelativeLayout;

    .line 72
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0655

    const-string v2, "field \'rlScreenShoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->rlScreenShoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a04a2

    const-string v1, "field \'llShareQzone\' and method \'onShare\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llShareQzone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    .line 76
    new-instance v0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$4;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0410

    const-string v2, "field \'ivScreenShoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    const v0, 0x7f0a037b

    const-string v1, "method \'onShare\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 85
    new-instance v2, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$5;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e7

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding$6;-><init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

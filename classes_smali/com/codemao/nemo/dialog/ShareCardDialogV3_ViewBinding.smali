.class public Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;
.super Ljava/lang/Object;
.source "ShareCardDialogV3_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;Landroid/view/View;)V
    .registers 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0650

    const-string v2, "field \'rlQrcode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0657

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a04a3

    const-string v1, "field \'llShareWechat\' and method \'onShare\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'llShareWechat\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareWechat:Landroid/widget/ImageView;

    .line 53
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a049f

    const-string v1, "field \'llShareCircle\' and method \'onShare\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'llShareCircle\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareCircle:Landroid/widget/ImageView;

    .line 62
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$2;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a1

    const-string v1, "field \'llShareQQ\' and method \'onShare\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'llShareQQ\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQQ:Landroid/widget/ImageView;

    .line 71
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$3;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a2

    const-string v1, "field \'llShareQzone\' and method \'onShare\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'llShareQzone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareQzone:Landroid/widget/ImageView;

    .line 80
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$4;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a0

    const-string v1, "field \'llShareLink\' and method \'onShare\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 87
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'llShareLink\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareLink:Landroid/widget/ImageView;

    .line 89
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$5;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e6

    const-string v1, "field \'llShareMiao\' and method \'onShare\'"

    .line 95
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 96
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'llShareMiao\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llShareMiao:Landroid/widget/ImageView;

    .line 98
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$6;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0410

    const-string v2, "field \'ivScreenShoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivScreenShoot:Landroid/widget/ImageView;

    .line 105
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03f8

    const-string v2, "field \'ivQrCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivQrCode:Landroid/widget/ImageView;

    const v0, 0x7f0a037b

    const-string v1, "field \'ivClose\' and method \'onShare\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 107
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivClose\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivClose:Landroid/widget/ImageView;

    .line 109
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$7;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0836

    const-string v2, "field \'tvDes\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->tvDes:Landroid/widget/TextView;

    .line 116
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a09b7

    const-string v2, "field \'tvWorkName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->tvWorkName:Landroid/widget/TextView;

    .line 117
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04e5

    const-string v2, "field \'llItem\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->llItem:Landroid/widget/LinearLayout;

    .line 118
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05d9

    const-string v2, "field \'qrCodeTopIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->qrCodeTopIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a04e7

    const-string v1, "method \'onShare\'"

    .line 119
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 121
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding$8;-><init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3_ViewBinding;Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

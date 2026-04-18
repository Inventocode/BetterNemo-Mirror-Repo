.class public Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog_ViewBinding;
.super Ljava/lang/Object;
.source "GenerateMiaoCodeLandScapeDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;Landroid/view/View;)V
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

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->ivClose:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06a1

    const-string v2, "field \'rlNotSupport\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->rlNotSupport:Landroid/widget/RelativeLayout;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a089d

    const-string v2, "field \'tvNotSupportName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->tvNotSupportName:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0583

    const-string v2, "field \'tvNotSupportShowLater\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->tvNotSupportShowLater:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a089c

    const-string v2, "field \'tvNotSupportButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->tvNotSupportButton:Landroid/widget/TextView;

    return-void
.end method

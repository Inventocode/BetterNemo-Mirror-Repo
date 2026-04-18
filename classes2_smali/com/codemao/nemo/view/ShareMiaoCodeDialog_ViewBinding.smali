.class public Lcom/codemao/nemo/view/ShareMiaoCodeDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ShareMiaoCodeDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/ShareMiaoCodeDialog;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a037b

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->ivClose:Landroid/widget/ImageView;

    .line 28
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06af

    const-string v2, "field \'rvShareMiaoCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->rvShareMiaoCode:Landroid/widget/RelativeLayout;

    return-void
.end method

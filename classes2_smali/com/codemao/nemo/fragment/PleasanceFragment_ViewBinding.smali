.class public Lcom/codemao/nemo/fragment/PleasanceFragment_ViewBinding;
.super Ljava/lang/Object;
.source "PleasanceFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/PleasanceFragment;Landroid/view/View;)V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0340

    const-string v2, "field \'ivLibrary\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivLibrary:Landroid/widget/ImageView;

    .line 22
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0341

    const-string v2, "field \'ivMon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivMon:Landroid/widget/ImageView;

    return-void
.end method

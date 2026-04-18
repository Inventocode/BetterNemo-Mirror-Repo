.class public Lcom/codemao/nemo/activity/ThemeDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ThemeDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/ThemeDetailActivity;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a018b

    const-string v2, "field \'container\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/codemao/nemo/activity/ThemeDetailActivity;->container:Landroid/widget/FrameLayout;

    return-void
.end method

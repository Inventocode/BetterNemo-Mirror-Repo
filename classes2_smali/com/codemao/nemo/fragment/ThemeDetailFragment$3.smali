.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$3;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 243
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$000(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 246
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

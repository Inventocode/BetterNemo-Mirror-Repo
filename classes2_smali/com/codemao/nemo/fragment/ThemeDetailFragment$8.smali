.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$8;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 283
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$8;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$8;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$402(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)I

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$8;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$602(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)I

    return-void
.end method

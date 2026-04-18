.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$7;
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

    .line 276
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 280
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$7;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

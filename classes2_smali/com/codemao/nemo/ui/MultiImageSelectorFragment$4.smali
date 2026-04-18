.class Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->createPopupFolderList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 232
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/FolderAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/codemao/nemo/adapter/FolderAdapter;->setSelectIndex(I)V

    .line 237
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;

    invoke-direct {p4, p0, p3, p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;-><init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;ILandroid/widget/AdapterView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

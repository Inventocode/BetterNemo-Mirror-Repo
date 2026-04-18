.class Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

.field final synthetic val$index:I

.field final synthetic val$v:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;ILandroid/widget/AdapterView;)V
    .registers 4

    .line 237
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iput p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->val$index:I

    iput-object p3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->val$v:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 242
    iget v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->val$index:I

    const/4 v1, 0x0

    if-nez v0, :cond_59

    .line 243
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v3, v3, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v3}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$600(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 244
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$700(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f1201b9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$800(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 246
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setShowCamera(Z)V

    goto :goto_b9

    .line 248
    :cond_4d
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setShowCamera(Z)V

    goto :goto_b9

    .line 251
    :cond_59
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->val$v:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->val$index:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/Folder;

    if-eqz v0, :cond_ae

    .line 253
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v2, v2, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setData(Ljava/util/List;)V

    .line 254
    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v2, v2, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$700(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, v0, Lcom/codemao/nemo/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ae

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v2, v2, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$900(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 259
    :cond_ae
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->setShowCamera(Z)V

    .line 262
    :goto_b9
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4$1;->this$1:Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;

    iget-object v0, v0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$4;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$1000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return-void
.end method

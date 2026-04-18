.class Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->createPopupFolderList(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(ILcom/codemao/toolssdk/image_selector/bean/Folder;)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 339
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$900(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->getSelectIndex()I

    move-result v0

    if-ne v0, p1, :cond_16

    return-void

    :cond_16
    if-nez p1, :cond_50

    .line 342
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1100(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 343
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->allImagesText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$400(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/common/Callback;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->allImagesText:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onFolderSelected(Ljava/lang/String;)V

    goto :goto_9b

    .line 346
    :cond_50
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 347
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    if-eqz p1, :cond_71

    .line 348
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-direct {v0}, Lcom/codemao/toolssdk/image_selector/bean/Image;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_71
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$700(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$800(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 351
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$4;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$400(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/common/Callback;

    move-result-object p1

    iget-object p2, p2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onFolderSelected(Ljava/lang/String;)V

    :goto_9b
    return-void
.end method

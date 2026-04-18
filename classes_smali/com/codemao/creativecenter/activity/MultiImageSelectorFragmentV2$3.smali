.class Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragmentV2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->showChooseList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

.field final synthetic val$chooseImageFolderListView:Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;)V
    .registers 3

    .line 234
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    iput-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->val$chooseImageFolderListView:Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p3, :cond_5e

    .line 240
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p3

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p5}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$400(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-result-object p5

    invoke-virtual {p3, p2, p4, p5}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 241
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    move-result-object p3

    if-eqz p3, :cond_42

    .line 242
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/codemao/creativecenter/R$string;->creative_nemo_all_pictures:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$502(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    move-result-object p3

    iget-object p4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onFolderSelect(Ljava/lang/String;)V

    .line 245
    :cond_42
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$600(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Z

    move-result p3

    if-eqz p3, :cond_54

    .line 246
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setShowCamera(Z)V

    goto :goto_b6

    .line 248
    :cond_54
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setShowCamera(Z)V

    goto :goto_b6

    .line 251
    :cond_5e
    iget-object p4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p4}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object p4

    sub-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/Folder;

    if-eqz p1, :cond_ad

    .line 253
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object p3

    iget-object p4, p1, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    invoke-virtual {p3, p4}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setData(Ljava/util/List;)V

    .line 254
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    iget-object p4, p1, Lcom/codemao/creativestore/bean/Folder;->name:Ljava/lang/String;

    invoke-static {p3, p4}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$502(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    move-result-object p3

    iget-object p1, p1, Lcom/codemao/creativestore/bean/Folder;->name:Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onFolderSelect(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_ad

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_ad

    .line 257
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object p1

    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 260
    :cond_ad
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->setShowCamera(Z)V

    .line 262
    :goto_b6
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$900(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 263
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$3;->val$chooseImageFolderListView:Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

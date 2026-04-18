.class public Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "ChooseImageFolderListView.java"


# instance fields
.field private adapterV2:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

.field private chooseFolderName:Ljava/lang/String;

.field private lv:Landroid/widget/ListView;

.field private mResultFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativestore/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private tvTop:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativestore/bean/Folder;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->mResultFolder:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->adapterV2:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    .line 41
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->chooseFolderName:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->mResultFolder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->adapterV2:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->mResultFolder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 48
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_choose_image_folder:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 4

    .line 53
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 54
    sget v0, Lcom/codemao/creativecenter/R$id;->lv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->lv:Landroid/widget/ListView;

    .line 55
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_name:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->tvTop:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->adapterV2:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->tvTop:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->chooseFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->tvTop:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView$1;-><init>(Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_38

    .line 66
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    :cond_38
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_57

    .line 70
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->tvTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42800000  # 64.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->tvTop:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_57
    return-void
.end method

.method public setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 77
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ChooseImageFolderListView;->lv:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_9
    return-void
.end method

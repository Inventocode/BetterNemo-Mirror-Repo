.class public Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ThemeMaterialListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private listItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

.field protected mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

.field final synthetic this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    .line 87
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->listItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    return-object p0
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;I)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 95
    :cond_3
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->listItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    .line 96
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$000(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 98
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_fa

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$000(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x1c6

    goto :goto_2f

    :cond_2d
    const/16 v0, 0xfc

    .line 100
    :goto_2f
    iget-object v2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    div-int/2addr v2, v0

    .line 101
    iget-object v3, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xb

    div-int/2addr v3, v0

    .line 102
    iget-object v4, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v4}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    div-int/2addr v4, v0

    .line 103
    iget-object v5, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v5}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xd

    div-int/2addr v5, v0

    .line 104
    iget-object v6, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v6}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v6

    mul-int/lit8 v6, v6, 0xe

    div-int/2addr v6, v0

    .line 105
    iget-object v7, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v7}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    div-int/2addr v7, v0

    .line 106
    iget-object v8, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v8}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x12

    div-int/2addr v8, v0

    .line 107
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$000(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 108
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 109
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    int-to-float v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 112
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 113
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_fa

    .line 115
    :cond_b8
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 116
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    int-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    :cond_fa
    :goto_fa
    new-instance v0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$1;-><init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 134
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->listItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_132

    .line 136
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->changeStatus(I)V

    goto :goto_174

    .line 137
    :cond_132
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->listItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isDownloaing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 138
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isError()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->changeStatus(I)V

    goto :goto_174

    .line 141
    :cond_165
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->changeStatus(I)V

    goto :goto_174

    .line 144
    :cond_16d
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->changeStatus(I)V

    .line 147
    :goto_174
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPad_preview_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_183

    :cond_17f
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPreview_url()Ljava/lang/String;

    move-result-object v0

    :goto_183
    iget-object v4, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v4, v4, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-static {v4}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->access$300(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$string;->creative_theme_actor_bg_count:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getActor_count()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getScene_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->ivThemeMarterialPreview:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    new-instance v1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$2;-><init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    new-instance v1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$3;-><init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

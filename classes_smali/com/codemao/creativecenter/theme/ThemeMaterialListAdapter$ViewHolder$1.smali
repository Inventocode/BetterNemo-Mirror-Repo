.class Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ThemeMaterialListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    .line 127
    sget p1, Lcom/codemao/creativecenter/BR;->progress:I

    if-ne p2, p1, :cond_16

    .line 128
    iget-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->access$200(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->setProgress(I)V

    goto :goto_2b

    .line 129
    :cond_16
    sget p1, Lcom/codemao/creativecenter/BR;->status:I

    if-ne p2, p1, :cond_2b

    .line 130
    iget-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;->tvThemeMarterialDownload:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    invoke-static {p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->access$200(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getStatus()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->changeStatus(I)V

    :cond_2b
    :goto_2b
    return-void
.end method

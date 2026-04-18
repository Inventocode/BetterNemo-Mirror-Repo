.class Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;I)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    iput p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverClick()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_maximum_n_pictures:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onItemClick(Lcom/codemao/creativestore/bean/Image;I)V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isShowCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    if-nez p2, :cond_15

    .line 173
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)V

    goto :goto_40

    .line 175
    :cond_15
    iget p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->val$mode:I

    if-ne p2, v1, :cond_25

    .line 176
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    move-result-object p2

    iget-object p1, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onToEdit(Ljava/lang/String;)V

    goto :goto_40

    .line 178
    :cond_25
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v0, p1, p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativestore/bean/Image;I)V

    goto :goto_40

    .line 182
    :cond_2b
    iget p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->val$mode:I

    if-ne p2, v1, :cond_3b

    .line 183
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;

    move-result-object p2

    iget-object p1, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$Callback;->onToEdit(Ljava/lang/String;)V

    goto :goto_40

    .line 185
    :cond_3b
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v0, p1, p2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativestore/bean/Image;I)V

    :goto_40
    return-void
.end method

.method public onItemSelect(Lcom/codemao/creativestore/bean/Image;I)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez p2, :cond_14

    .line 160
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;)V

    goto :goto_23

    .line 162
    :cond_14
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->val$mode:I

    invoke-static {p2, p1, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativestore/bean/Image;I)V

    goto :goto_23

    .line 165
    :cond_1c
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$1;->val$mode:I

    invoke-static {p2, p1, v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Lcom/codemao/creativestore/bean/Image;I)V

    :goto_23
    return-void
.end method

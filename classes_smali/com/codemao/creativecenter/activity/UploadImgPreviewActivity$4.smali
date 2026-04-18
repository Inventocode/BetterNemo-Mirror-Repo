.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 215
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 218
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 221
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 223
    :cond_3a
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 226
    :cond_4a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativecenter/event/UpdateResulListEvent;

    invoke-direct {v3, p1}, Lcom/codemao/creativecenter/event/UpdateResulListEvent;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/event/UpdateResulListEvent;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 228
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$4;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.class Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;
.super Ljava/lang/Object;
.source "MultiImageSelectorActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->onCommit(Lcom/codemao/creativecenter/event/UploadImgEventWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$900(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 438
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$900(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 439
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$4;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->finish()V

    return-void
.end method

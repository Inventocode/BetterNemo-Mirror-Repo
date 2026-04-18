.class Lcom/codemao/nemo/activity/ShareProductActivity$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ShareProductActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->showByType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/ImageCheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ShareProductActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "鉴黄接口失败"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "fetch uri failed"

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 251
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$200(Lcom/codemao/nemo/activity/ShareProductActivity;)V

    goto :goto_55

    .line 253
    :cond_4d
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingError:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_55
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/ImageCheckResult;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ImageCheckResult;->getResult()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 237
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$000(Lcom/codemao/nemo/activity/ShareProductActivity;)V

    goto :goto_36

    .line 239
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string/jumbo v0, "违规图片"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$3;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$200(Lcom/codemao/nemo/activity/ShareProductActivity;)V

    :goto_36
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 230
    check-cast p1, Lcom/codemao/nemo/bean/ImageCheckResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity$3;->onSuc(Lcom/codemao/nemo/bean/ImageCheckResult;)V

    return-void
.end method

.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ShareProductKnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showByType(I)V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "鉴黄接口失败"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "fetch uri failed"

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 253
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$200(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    goto :goto_6c

    .line 255
    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "上传错误1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "分享"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingError:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6c
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/ImageCheckResult;)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ImageCheckResult;->getResult()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 239
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$000(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    goto :goto_36

    .line 241
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string/jumbo v0, "违规图片"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$200(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    :goto_36
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 232
    check-cast p1, Lcom/codemao/nemo/bean/ImageCheckResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;->onSuc(Lcom/codemao/nemo/bean/ImageCheckResult;)V

    return-void
.end method

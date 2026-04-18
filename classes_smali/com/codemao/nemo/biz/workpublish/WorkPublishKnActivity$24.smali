.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->uploadCoverJPG(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1033
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 1036
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1037
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->val$path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2102(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    goto :goto_3a

    .line 1040
    :cond_29
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1041
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$24;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const-string/jumbo p2, "发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3a
    return-void
.end method

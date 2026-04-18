.class Lcom/codemao/nemo/activity/CoverEditActivity$3;
.super Ljava/lang/Object;
.source "CoverEditActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CoverEditActivity;->uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CoverEditActivity;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CoverEditActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 415
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->this$0:Lcom/codemao/nemo/activity/CoverEditActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 418
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 420
    iget-object p2, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->this$0:Lcom/codemao/nemo/activity/CoverEditActivity;

    invoke-static {p2, p1}, Lcom/codemao/nemo/activity/CoverEditActivity;->access$200(Lcom/codemao/nemo/activity/CoverEditActivity;Ljava/lang/String;)V

    goto :goto_3d

    .line 422
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->this$0:Lcom/codemao/nemo/activity/CoverEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoverEditActivity;->access$100(Lcom/codemao/nemo/activity/CoverEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 423
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->this$0:Lcom/codemao/nemo/activity/CoverEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CoverEditActivity;->access$100(Lcom/codemao/nemo/activity/CoverEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 425
    :cond_35
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoverEditActivity$3;->this$0:Lcom/codemao/nemo/activity/CoverEditActivity;

    const-string/jumbo p2, "图片上传失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3d
    return-void
.end method

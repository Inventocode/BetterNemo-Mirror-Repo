.class Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;
.super Ljava/lang/Object;
.source "UserAvatarEditActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserAvatarEditActivity;->uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 354
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 357
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->val$baseUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->val$path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 359
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {p2, p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$100(Lcom/codemao/nemo/activity/UserAvatarEditActivity;Ljava/lang/String;)V

    goto :goto_35

    .line 361
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserAvatarEditActivity;->access$000(Lcom/codemao/nemo/activity/UserAvatarEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 362
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserAvatarEditActivity$2;->this$0:Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    const-string/jumbo p2, "图片上传失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_35
    return-void
.end method

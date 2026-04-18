.class Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;
.super Ljava/lang/Object;
.source "ShanyanWrap.java"

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->openLoginAuth(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;Landroid/content/Context;)V
    .registers 3

    .line 398
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    iput-object p2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneKeyLoginStatus(ILjava/lang/String;)V
    .registers 13

    const-string v0, "SHANYAN"

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_97

    .line 404
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "token"

    .line 405
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "闪验授权成功，token："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "，code："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "message："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v2

    if-eqz v2, :cond_125

    .line 409
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v4

    const-string v5, "SHANYAN"

    .line 410
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getOnekeyShanyanAppId()Ljava/lang/String;

    move-result-object v6

    move v8, p1

    move-object v9, p2

    .line 409
    invoke-interface/range {v4 .. v9}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_55} :catch_57

    goto/16 :goto_125

    :catch_57
    move-exception v2

    .line 413
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v2

    const-string/jumbo v3, "闪验授权成功，但是json解析失败~"

    invoke-virtual {v2, v3}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v2

    const/16 v3, 0x32cb

    if-eqz v2, :cond_8d

    .line 416
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v2

    iget-object v4, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->val$context:Landroid/content/Context;

    .line 418
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/codemao/android/account/R$string;->str_one_key_login_fail:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-interface {v2, v0, v3, p1, v4}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->onAuthPageOpen(ZZ)V

    .line 422
    :cond_8d
    invoke-static {v3, p1, p2}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;->uploadErr(IILjava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->closeAuthPage()V

    goto/16 :goto_125

    :cond_97
    const/16 v2, 0x3f3

    const-string/jumbo v3, "，message："

    if-ne p1, v2, :cond_d6

    .line 428
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "闪验授权失败，用户主动取消授权，code："

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 431
    iget-object v1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v1

    const/16 v2, 0x36b0

    invoke-interface {v1, v0, v2, p1, p2}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    .line 434
    :cond_d0
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->closeAuthPage()V

    goto :goto_125

    .line 437
    :cond_d6
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "闪验授权失败，code："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v2

    const/16 v3, 0x32c9

    if-eqz v2, :cond_11d

    .line 439
    iget-object v2, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v2}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v2

    iget-object v4, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->val$context:Landroid/content/Context;

    .line 441
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/codemao/android/account/R$string;->str_one_key_login_fail:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-interface {v2, v0, v3, p1, v4}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {v0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->access$100(Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;)Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->onAuthPageOpen(ZZ)V

    .line 445
    :cond_11d
    invoke-static {v3, p1, p2}, Lcn/codemao/android/onekeylogin/utils/ExceptionUploadUtils;->uploadErr(IILjava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap$7;->this$0:Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-virtual {p1}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;->closeAuthPage()V

    :cond_125
    :goto_125
    return-void
.end method

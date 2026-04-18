.class Lcn/codemao/android/account/util/GeetestRequest$1;
.super Lcom/geetest/sdk/GT3Listener;
.source "GeetestRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/util/GeetestRequest;->customVerity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/GeetestRequest;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->this$0:Lcn/codemao/android/account/util/GeetestRequest;

    iput-object p2, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/geetest/sdk/GT3Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick()V
    .registers 4

    .line 186
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 187
    iget-object v1, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->val$appId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->this$0:Lcn/codemao/android/account/util/GeetestRequest;

    iget-object v1, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->val$appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/GeetestRequest;->access$300(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onClosed(I)V
    .registers 5

    .line 159
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onClosed-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogReady(Ljava/lang/String;)V
    .registers 5

    .line 114
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onDialogReady-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogResult(Ljava/lang/String;)V
    .registers 5

    .line 128
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onDialogResult-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "appid"

    .line 132
    iget-object v1, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->this$0:Lcn/codemao/android/account/util/GeetestRequest;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/codemao/android/account/util/GeetestRequest;->access$100(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_49} :catch_4a

    goto :goto_53

    .line 137
    :catch_4a
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest$1;->this$0:Lcn/codemao/android/account/util/GeetestRequest;

    invoke-static {p1}, Lcn/codemao/android/account/util/GeetestRequest;->access$200(Lcn/codemao/android/account/util/GeetestRequest;)Lcom/geetest/sdk/GT3GeetestUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->showFailedDialog()V

    :goto_53
    return-void
.end method

.method public onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V
    .registers 5

    .line 178
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onFailed-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ErrorBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveCaptchaCode(I)V
    .registers 2

    return-void
.end method

.method public onStatistics(Ljava/lang/String;)V
    .registers 5

    .line 150
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onStatistics-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 168
    invoke-static {}, Lcn/codemao/android/account/util/GeetestRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GT3BaseListener-->onSuccess-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

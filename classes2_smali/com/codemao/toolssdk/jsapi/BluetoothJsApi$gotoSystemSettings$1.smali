.class public final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$gotoSystemSettings$1;
.super Ljava/lang/Object;
.source "BluetoothJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->gotoSystemSettings(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$gotoSystemSettings$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$gotoSystemSettings$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 6

    .line 188
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "原生跳转设置后响应onActivityResult"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    const/16 p2, 0x3ee

    if-ne p1, p2, :cond_1e

    if-nez p3, :cond_1e

    .line 193
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$gotoSystemSettings$1;->$activity:Landroid/app/Activity;

    if-eqz p1, :cond_1e

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    :cond_1e
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$gotoSystemSettings$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    goto :goto_2d

    :cond_2c
    move-object p1, p2

    :goto_2d
    if-nez p1, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    :goto_33
    return-void
.end method

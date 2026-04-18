.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;
.super Ljava/lang/Object;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gotoSystemSettings(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 6

    .line 197
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "原生跳转设置后响应onActivityResult"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    const/16 p2, 0x3ee

    if-ne p1, p2, :cond_1e

    if-nez p3, :cond_1e

    .line 202
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;->$activity:Landroid/app/Activity;

    if-eqz p1, :cond_1e

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 207
    :cond_1e
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->clearActivityResultListener()V

    :cond_2f
    return-void
.end method

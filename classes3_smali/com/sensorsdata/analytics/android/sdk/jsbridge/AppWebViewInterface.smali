.class public Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;
.super Ljava/lang/Object;
.source "AppWebViewInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AppWebViewInterface"


# instance fields
.field private final enableVerify:Z

.field private final mContext:Landroid/content/Context;

.field private mWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;ZLandroid/view/View;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    .line 51
    iput-boolean p3, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->enableVerify:Z

    if-eqz p4, :cond_12

    .line 53
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->mWebView:Ljava/lang/ref/WeakReference;

    :cond_12
    return-void
.end method


# virtual methods
.method public sensorsdata_abtest_module()Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SA.AppWebViewInterface"

    const-string v2, "sensorsdata_abtest_module"

    .line 169
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.sensorsdata.abtest.SensorsABTest"

    .line 170
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "shareInstance"

    new-array v3, v0, [Ljava/lang/Object;

    .line 171
    invoke-static {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1e

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    :catch_1e
    move-exception v1

    .line 174
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public sensorsdata_call_app()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SA.AppWebViewInterface"

    :try_start_2
    const-string v1, "sensorsdata_call_app"

    .line 60
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    if-nez v1, :cond_12

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    .line 64
    :cond_12
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_29} :catch_57

    const-string v3, "is_login"

    const-string v4, "distinct_id"

    if-nez v2, :cond_3b

    .line 67
    :try_start_2f
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_50

    .line 70
    :cond_3b
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    :goto_50
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->properties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_56} :catch_57

    return-object v0

    :catch_57
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public sensorsdata_get_app_visual_config()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "SA.AppWebViewInterface"

    const-string v1, "sensorsdata_get_app_visual_config"

    .line 189
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    const-string v1, "sensors_analytics_module_visual"

    const-string v2, "h5GetAppVisualConfig"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    .line 192
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const-string v0, ""

    return-object v0
.end method

.method public sensorsdata_get_server_url()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    :try_start_2
    const-string v1, "SA.AppWebViewInterface"

    const-string v2, "sensorsdata_get_server_url"

    .line 110
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoTrackWebView()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getServerUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    :cond_1b
    return-object v0

    :catch_1c
    move-exception v1

    .line 113
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public sensorsdata_js_call_app(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "SA.AppWebViewInterface"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorsdata_js_call_app, content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->mWebView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    .line 154
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->handleJsMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 157
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public sensorsdata_track(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SA.AppWebViewInterface"

    .line 83
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorsdata_track event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->enableVerify:Z

    invoke-static {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->trackEventFromH5(Ljava/lang/String;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_34

    :catch_1c
    move-exception v1

    .line 86
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorsdata_track event = exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public sensorsdata_verify(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "SA.AppWebViewInterface"

    .line 94
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorsdata_verify event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enableVerify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->enableVerify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->enableVerify:Z

    if-nez v1, :cond_29

    .line 96
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->sensorsdata_track(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 99
    :cond_29
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->verifyEventFromH5(Ljava/lang/String;)Z

    move-result p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    return p1

    :catch_2e
    move-exception p1

    .line 101
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorsdata_verify return false,exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sensorsdata_visual_verify(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 127
    :try_start_1
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;->enableVerify:Z

    if-nez v1, :cond_7

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 133
    :cond_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "server_url"

    .line 134
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 136
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->check(Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;)Z

    move-result p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    return p1

    :catch_36
    move-exception p1

    .line 139
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3a
    return v0
.end method

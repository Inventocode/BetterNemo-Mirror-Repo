.class public Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;
.super Ljava/lang/Object;
.source "H5Helper.java"


# static fields
.field private static mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 11

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_4a

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_6
    const-string v3, "getSettings"

    new-array v4, v2, [Ljava/lang/Class;

    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setJavaScriptEnabled"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 48
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    :try_start_2f
    const-string v3, "addJavascriptInterface"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 53
    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 54
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 56
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_4e
    return-void
.end method

.method public static addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .registers 2

    .line 111
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_b

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    :cond_b
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 115
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 118
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static handleJsMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 139
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    if-eqz v1, :cond_10

    .line 142
    :try_start_1e
    invoke-interface {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;->onReceiveJSMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_10

    :catch_22
    move-exception v1

    .line 145
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_10

    :cond_27
    return-void
.end method

.method public static removeSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .registers 2

    .line 129
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 130
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 133
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_14
    :goto_14
    return-void
.end method

.method private static trackEvent(Ljava/lang/String;)V
    .registers 3

    .line 152
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz v0, :cond_10

    const-string p0, "SA.AppWebViewInterface"

    const-string v0, "trackEvent SensorsDataAPIEmptyImplementation"

    .line 153
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_10
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper$1;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackEventFromH5(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "SA.AppWebViewInterface"

    .line 85
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 89
    :cond_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackEventFromH5 h5 enableVerify = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5d

    const-string p1, "server_url"

    .line 92
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackEventFromH5 h5 serverUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 95
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->check(Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;)Z

    move-result p1

    if-nez p1, :cond_5d

    :cond_5c
    return-void

    .line 103
    :cond_5d
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->trackEvent(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception p0

    .line 105
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_65
    return-void
.end method

.method public static verifyEventFromH5(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "SA.AppWebViewInterface"

    const/4 v1, 0x0

    .line 62
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyEventFromH5 h5 eventInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    .line 66
    :cond_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "server_url"

    .line 68
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyEventFromH5 h5 serverUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 71
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-direct {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->check(Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;)Z

    move-result v0

    if-nez v0, :cond_5c

    return v1

    .line 74
    :cond_5c
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->trackEvent(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_61

    const/4 p0, 0x1

    return p0

    :catch_61
    move-exception p0

    .line 78
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_65
    return v1
.end method

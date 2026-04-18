.class public Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;
.super Ljava/lang/Object;
.source "JSBridgeHelper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/bridge/WebViewJavascriptBridge;


# static fields
.field private static final CALLBACK_ID_FORMAT:Ljava/lang/String; = "JAVA_CB_%s"

.field private static final CALL_TYPE_GET_VISUAL_PROPERTIES:Ljava/lang/String; = "getJSVisualProperties"


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mCallbacks:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;)Ljava/util/Map;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 4

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    return-void
.end method

.method private static invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 5

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 124
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 126
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method


# virtual methods
.method public addSAJSListener()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    if-nez v0, :cond_14

    .line 46
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    .line 69
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V

    :cond_14
    return-void
.end method

.method public sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V

    return-void
.end method

.method public declared-synchronized sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    .registers 11

    monitor-enter p0

    .line 76
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_70
    .catchall {:try_start_1 .. :try_end_5} :catchall_6e

    if-eqz v0, :cond_9

    .line 77
    monitor-exit p0

    return-void

    .line 79
    :cond_9
    :try_start_9
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;-><init>()V

    .line 80
    iput-object p2, v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;->methodName:Ljava/lang/String;

    if-eqz p4, :cond_2d

    const-string v1, "JAVA_CB_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;->messageId:Ljava/lang/String;

    :cond_2d
    const/4 p4, 0x0

    .line 87
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 88
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 89
    new-instance p4, Lorg/json/JSONObject;

    check-cast p3, Ljava/lang/String;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_5f

    .line 91
    :cond_43
    instance-of v1, p3, Lorg/json/JSONObject;

    if-eqz v1, :cond_5f

    .line 92
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message_id"

    .line 93
    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;->messageId:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v1, "Android"

    .line 94
    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    check-cast p3, Lorg/json/JSONObject;

    invoke-static {p3, p4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5f} :catch_70
    .catchall {:try_start_9 .. :try_end_5f} :catchall_6e

    :cond_5f
    :goto_5f
    if-nez p4, :cond_63

    .line 99
    monitor-exit p0

    return-void

    :cond_63
    if-eqz p1, :cond_74

    .line 102
    :try_start_65
    new-instance p3, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$2;

    invoke-direct {p3, p0, p2, p4, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_70
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6e

    goto :goto_74

    :catchall_6e
    move-exception p1

    goto :goto_76

    :catch_70
    move-exception p1

    .line 111
    :try_start_71
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    .line 113
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :goto_76
    monitor-exit p0

    throw p1
.end method

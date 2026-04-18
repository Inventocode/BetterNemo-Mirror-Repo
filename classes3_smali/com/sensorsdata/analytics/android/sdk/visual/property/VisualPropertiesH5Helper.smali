.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;
.super Ljava/lang/Object;
.source "VisualPropertiesH5Helper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/bridge/WebViewJavascriptBridge;


# instance fields
.field private mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

.field private mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

.field private mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    return-void
.end method

.method private static Base642string(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 241
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;)Landroid/util/SparseArray;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method private addSAEventListener()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    if-nez v0, :cond_14

    .line 135
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$2;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 208
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    :cond_14
    return-void
.end method

.method private getJSVisualProperties(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    .registers 6

    .line 105
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesCache()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getH5JsonArrayFromCache(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_f

    return-void

    .line 109
    :cond_f
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_24

    :try_start_14
    const-string v0, "sensorsdata_js_visual_properties"

    .line 111
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_24

    goto :goto_1e

    :catch_1a
    move-exception p2

    .line 113
    :try_start_1b
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1e
    const-string p2, "getJSVisualProperties"

    .line 115
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    .line 117
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_28
    return-void
.end method


# virtual methods
.method public clearCache(I)V
    .registers 3

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 225
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public getEventName(I)Lorg/json/JSONArray;
    .registers 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 216
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method mergeJSVisualProperties(Lorg/json/JSONObject;Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5c

    .line 58
    :try_start_2
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5c

    .line 61
    :cond_9
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getViewNode(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 66
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 67
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_16

    .line 69
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;Lorg/json/JSONObject;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v2, p2, p3, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->getJSVisualProperties(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_58

    goto :goto_16

    :cond_4b
    const-wide/16 p1, 0x1f4

    .line 94
    :try_start_4d
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_52} :catch_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_58

    goto :goto_5c

    :catch_53
    move-exception p1

    .line 96
    :try_start_54
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 99
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public registerListeners()V
    .registers 2

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->addSAJSListener()V

    .line 127
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->addSAEventListener()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 129
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method

.method public sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V

    return-void
.end method

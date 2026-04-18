.class public Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;
.super Ljava/lang/Object;
.source "VisualProtocolImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SAVisualProtocolImpl"


# instance fields
.field private final mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 52
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object p1

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AppStateManager;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AppStateManager;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->addActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    return-void
.end method

.method private addVisualJavascriptInterface(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 150
    sget v0, Lcom/sensorsdata/analytics/android/sdk/visual/R$id;->sensors_analytics_tag_view_webview_visual:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebViewVisualInterface;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebViewVisualInterface;-><init>(Landroid/view/View;)V

    const-string v1, "SensorsData_App_Visual_Bridge"

    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private appVisualConfig()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_31

    .line 139
    :cond_1a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->registerListeners()V

    .line 140
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesCache()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getVisualCache()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-object v0

    :catch_32
    move-exception v1

    .line 143
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private mergeVisualProperties(Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 109
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 111
    invoke-static {v0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/utils/VisualUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p2

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 114
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mergeVisualProperties(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 117
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private showPairingCodeInputDialog(Landroid/content/Context;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SA.SAVisualProtocolImpl"

    if-nez v0, :cond_10

    const-string p1, "The argument context can\'t be null"

    .line 158
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_10
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1a

    const-string p1, "The static method showPairingCodeEditDialog(Context context) only accepts Activity as a parameter"

    .line 162
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_1a
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 166
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public flutterGetAppVisualConfig()Ljava/lang/String;
    .registers 3

    .line 177
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->appVisualConfig()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualState()Ljava/lang/Boolean;
    .registers 2

    .line 185
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public h5GetAppVisualConfig()Ljava/lang/String;
    .registers 3

    .line 122
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->appVisualConfig()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 57
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_12c

    goto/16 :goto_a2

    :sswitch_d
    const-string v1, "flutterGetAppVisualConfig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/16 v0, 0xb

    goto/16 :goto_a2

    :sswitch_19
    const-string v1, "mergeVisualProperties"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x2

    goto/16 :goto_a2

    :sswitch_24
    const-string v1, "sendVisualizedMessage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/16 v0, 0xd

    goto/16 :goto_a2

    :sswitch_30
    const-string v1, "showOpenHeatMapDialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/16 v0, 0x8

    goto/16 :goto_a2

    :sswitch_3c
    const-string v1, "requestVisualConfig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x1

    goto :goto_a2

    :sswitch_46
    const-string v1, "stopHeatMapService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x6

    goto :goto_a2

    :sswitch_50
    const-string v1, "resumeHeatMapService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x5

    goto :goto_a2

    :sswitch_5a
    const-string v1, "stopVisualService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x4

    goto :goto_a2

    :sswitch_64
    const-string v1, "showOpenVisualizedAutoTrackDialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/16 v0, 0x9

    goto :goto_a2

    :sswitch_6f
    const-string v1, "showPairingCodeInputDialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x7

    goto :goto_a2

    :sswitch_79
    const-string v1, "getVisualState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/16 v0, 0xc

    goto :goto_a2

    :sswitch_84
    const-string v1, "h5GetAppVisualConfig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/16 v0, 0xa

    goto :goto_a2

    :sswitch_8f
    const-string v1, "addVisualJavascriptInterface"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x0

    goto :goto_a2

    :sswitch_99
    const-string v1, "resumeVisualService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 v0, 0x3

    :cond_a2
    :goto_a2
    packed-switch v0, :pswitch_data_166

    goto/16 :goto_129

    .line 95
    :pswitch_a7  #0xd
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->sendVisualizedMessage(Ljava/lang/String;)V

    goto/16 :goto_129

    .line 93
    :pswitch_b0  #0xc
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->getVisualState()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_b5  #0xb
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->flutterGetAppVisualConfig()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_ba  #0xa
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->h5GetAppVisualConfig()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_bf  #0x9
    aget-object p1, p2, v4

    check-cast p1, Landroid/app/Activity;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog;->showOpenVisualizedAutoTrackDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_129

    .line 83
    :pswitch_cf  #0x8
    aget-object p1, p2, v4

    check-cast p1, Landroid/app/Activity;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/VisualDialog;->showOpenHeatMapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_129

    .line 80
    :pswitch_df  #0x7
    aget-object p1, p2, v4

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->showPairingCodeInputDialog(Landroid/content/Context;)V

    goto :goto_129

    .line 77
    :pswitch_e7  #0x6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->stop()V

    goto :goto_129

    .line 74
    :pswitch_ef  #0x5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->resume()V

    goto :goto_129

    .line 71
    :pswitch_f7  #0x4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->stop()V

    goto :goto_129

    .line 68
    :pswitch_ff  #0x3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->resume()V

    goto :goto_129

    .line 65
    :pswitch_107  #0x2
    aget-object p1, p2, v4

    check-cast p1, Lorg/json/JSONObject;

    aget-object p2, p2, v3

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mergeVisualProperties(Lorg/json/JSONObject;Landroid/view/View;)V

    goto :goto_129

    .line 62
    :pswitch_113  #0x1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->requestVisualConfig(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    goto :goto_129

    .line 59
    :pswitch_11d  #0x0
    aget-object p1, p2, v4

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/impl/VisualProtocolImpl;->addVisualJavascriptInterface(Landroid/view/View;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_124} :catch_125

    goto :goto_129

    :catch_125
    move-exception p1

    .line 99
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_129
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_12c
    .sparse-switch
        -0x7f14f7d8 -> :sswitch_99
        -0x7d5d5ab5 -> :sswitch_8f
        -0x7b7ff326 -> :sswitch_84
        -0x75a8e405 -> :sswitch_79
        -0x65b48f06 -> :sswitch_6f
        -0x2c77dad3 -> :sswitch_64
        -0x1bd6158d -> :sswitch_5a
        -0x15d686aa -> :sswitch_50
        -0x11391f95 -> :sswitch_46
        0x217b6ed1 -> :sswitch_3c
        0x31bf4a0d -> :sswitch_30
        0x3412066f -> :sswitch_24
        0x547d58eb -> :sswitch_19
        0x5dada269 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_11d  #00000000
        :pswitch_113  #00000001
        :pswitch_107  #00000002
        :pswitch_ff  #00000003
        :pswitch_f7  #00000004
        :pswitch_ef  #00000005
        :pswitch_e7  #00000006
        :pswitch_df  #00000007
        :pswitch_cf  #00000008
        :pswitch_bf  #00000009
        :pswitch_ba  #0000000a
        :pswitch_b5  #0000000b
        :pswitch_b0  #0000000c
        :pswitch_a7  #0000000d
    .end packed-switch
.end method

.method public sendVisualizedMessage(Ljava/lang/String;)V
    .registers 3

    .line 189
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getFlutterNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->handlerMessage(Ljava/lang/String;)V

    return-void
.end method

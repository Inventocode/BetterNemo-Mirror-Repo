.class public final Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;
.super Ljava/lang/Object;
.source "ToolSDKLogEventUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolSDKLogEventUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolSDKLogEventUtils.kt\ncom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,222:1\n211#2,2:223\n211#2,2:225\n*S KotlinDebug\n*F\n+ 1 ToolSDKLogEventUtils.kt\ncom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils\n*L\n141#1:223,2\n180#1:225,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

.field private static final enable$delegate:Lkotlin/Lazy;

.field private static validUserId:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    .line 20
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils$enable$2;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils$enable$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->enable$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getEnable()Z
    .registers 2

    .line 20
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->enable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic sendEvent$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x0

    .line 85
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic sendEventMultiple$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)V
    .registers 15

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object v4, v0

    goto :goto_8

    :cond_7
    move-object v4, p3

    :goto_8
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_e

    move-object v5, v0

    goto :goto_f

    :cond_e
    move-object v5, p4

    :goto_f
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_16

    const/4 p5, 0x0

    const/4 v6, 0x0

    goto :goto_17

    :cond_16
    move v6, p5

    :goto_17
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 206
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDeviceInfo(Landroid/content/Context;)Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;
    .registers 20

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    .line 194
    invoke-virtual/range {p0 .. p1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 195
    invoke-virtual/range {p0 .. p1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x13ff

    const/16 v17, 0x0

    move-object v2, v0

    .line 193
    invoke-direct/range {v2 .. v17}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->setWebviewUA(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDeviceInfoString()Ljava/lang/String;
    .registers 18

    .line 202
    new-instance v16, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {v16 .. v16}, Lcom/codemao/toolssdk/model/dsbridge/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 216
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v0, "{\n            val packag…nfo.versionName\n        }"

    .line 212
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_1c

    :catch_1a
    const-string p1, "0.0.0"

    :goto_1c
    return-object p1
.end method

.method public final init(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    const-string p2, "https://shence-data.codemao.cn/sa?project=default"

    goto :goto_c

    :cond_a
    const-string p2, "https://shence-data.codemao.cn/sa?project=production"

    .line 31
    :goto_c
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-direct {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 32
    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 33
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->startWithConfigOptions(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V

    return-void
.end method

.method public final sendEvent(Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_2c

    .line 92
    sget-object p4, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p3, :cond_21

    const-string v1, ""

    goto :goto_22

    :cond_21
    move-object v1, p3

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    .line 94
    :cond_2c
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getEnable()Z

    move-result p4

    if-nez p4, :cond_33

    return-void

    .line 97
    :cond_33
    sget-boolean p4, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->validUserId:Z

    if-nez p4, :cond_4c

    .line 98
    sget-object p4, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p4}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p4

    if-eqz p4, :cond_4c

    invoke-virtual {p4}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v0

    .line 99
    sget-object p4, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->userLogin(Ljava/lang/String;)V

    .line 103
    :cond_4c
    :try_start_4c
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "is_success"

    .line 104
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p2, :cond_6b

    if-eqz p3, :cond_63

    .line 105
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_61

    goto :goto_63

    :cond_61
    const/4 p2, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 p2, 0x1

    :goto_64
    if-nez p2, :cond_6b

    const-string p2, "fail_reason"

    .line 106
    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_6b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_77
    return-void
.end method

.method public final sendEventMultiple(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_4b

    const-string p5, ""

    if-eqz p4, :cond_11

    .line 122
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_11
    move-object v0, p5

    :cond_12
    if-nez p3, :cond_16

    move-object v1, p5

    goto :goto_27

    .line 123
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    invoke-virtual {v1, p5, v0, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_4b
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getEnable()Z

    move-result p5

    if-nez p5, :cond_52

    return-void

    .line 130
    :cond_52
    sget-boolean p5, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->validUserId:Z

    if-nez p5, :cond_6b

    .line 131
    sget-object p5, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p5}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p5

    if-eqz p5, :cond_6b

    invoke-virtual {p5}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v0

    .line 132
    sget-object p5, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->userLogin(Ljava/lang/String;)V

    .line 136
    :cond_6b
    :try_start_6b
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "is_success"

    .line 137
    invoke-virtual {p5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p2, :cond_8a

    if-eqz p3, :cond_82

    .line 138
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_80

    goto :goto_82

    :cond_80
    const/4 p2, 0x0

    goto :goto_83

    :cond_82
    :goto_82
    const/4 p2, 0x1

    :goto_83
    if-nez p2, :cond_8a

    const-string p2, "fail_reason"

    .line 139
    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    if-eqz p4, :cond_ae

    .line 211
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_94
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ae

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_94

    .line 147
    :cond_ae
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p2, p1, p5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ba
    return-void
.end method

.method public final sendEventMultipleAny(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_4b

    const-string p5, ""

    if-eqz p4, :cond_11

    .line 161
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_11
    move-object v0, p5

    :cond_12
    if-nez p3, :cond_16

    move-object v1, p5

    goto :goto_27

    .line 162
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    invoke-virtual {v1, p5, v0, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4b
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getEnable()Z

    move-result p5

    if-nez p5, :cond_52

    return-void

    .line 169
    :cond_52
    sget-boolean p5, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->validUserId:Z

    if-nez p5, :cond_6b

    .line 170
    sget-object p5, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p5}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p5

    if-eqz p5, :cond_6b

    invoke-virtual {p5}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v0

    .line 171
    sget-object p5, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->userLogin(Ljava/lang/String;)V

    .line 175
    :cond_6b
    :try_start_6b
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "is_success"

    .line 176
    invoke-virtual {p5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p2, :cond_8a

    if-eqz p3, :cond_82

    .line 177
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_80

    goto :goto_82

    :cond_80
    const/4 p2, 0x0

    goto :goto_83

    :cond_82
    :goto_82
    const/4 p2, 0x1

    :goto_83
    if-nez p2, :cond_8a

    const-string p2, "fail_reason"

    .line 178
    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    if-eqz p4, :cond_ae

    .line 211
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_94
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ae

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_94

    .line 186
    :cond_ae
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p2, p1, p5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ba
    return-void
.end method

.method public final setCommonProperties(Landroid/content/Context;Z)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ct_sdk_product_name"

    .line 47
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "project_name"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_pad"

    .line 49
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "platform"

    const-string p2, "android_tools_dk"

    .line 50
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tools_sdk_platform"

    .line 51
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tool_sdk_version"

    const-string p2, "3.11.1-SNAPSHOT"

    .line 52
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_name"

    .line 53
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_version"

    .line 54
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final setCommonProperties(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "product_name"

    .line 64
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "project_name"

    .line 65
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_pad"

    .line 66
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "platform"

    const-string p2, "android_tools_dk"

    .line 67
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tools_sdk_platform"

    .line 68
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tool_sdk_version"

    const-string p2, "3.11.1-SNAPSHOT"

    .line 69
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final userLogin(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-nez v1, :cond_18

    .line 79
    sput-boolean v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->validUserId:Z

    .line 80
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->login(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

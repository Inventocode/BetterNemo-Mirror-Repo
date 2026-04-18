.class public final Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;
.super Ljava/lang/Object;
.source "SensorsDataUtils.java"


# static fields
.field public static final COMMAND_HARMONYOS_VERSION:Ljava/lang/String; = "getprop hw_sc.build.platform.version"

.field private static final SHARED_PREF_APP_VERSION:Ljava/lang/String; = "sensorsdata.app.version"

.field private static final TAG:Ljava/lang/String; = "SA.SensorsDataUtils"

.field private static androidID:Ljava/lang/String; = ""

.field private static isAndroidIDEnabled:Z = true

.field private static isOAIDEnabled:Z = true

.field private static isUniApp:Z = false

.field private static final mInvalidAndroidId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mInvalidAndroidId:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersionIsNew(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string p0, "sensorsdata.app.version"

    const/4 v0, 0x1

    .line 227
    :try_start_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 229
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_23

    return v0

    :cond_21
    const/4 p0, 0x0

    return p0

    :catch_23
    move-exception p0

    .line 233
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method private static compatActivity()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "androidx.appcompat.app.AppCompatActivity"

    .line 165
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_e

    .line 171
    :try_start_a
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-object v1
.end method

.method public static enableAndroidId(Z)V
    .registers 1

    .line 319
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isAndroidIDEnabled:Z

    return-void
.end method

.method public static enableOAID(Z)V
    .registers 1

    .line 328
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isOAIDEnabled:Z

    return-void
.end method

.method public static getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4b

    .line 86
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_14

    .line 87
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getToolbarTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, v0

    .line 93
    :goto_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 101
    invoke-virtual {p0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 102
    invoke-virtual {p0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4b

    :cond_4a
    return-object v1

    :catch_4b
    :cond_4b
    return-object v0
.end method

.method public static getIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 190
    :try_start_0
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isAndroidIDEnabled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_47

    const-string v1, ""

    const-string v2, "SA.SensorsDataUtils"

    if-nez v0, :cond_e

    :try_start_8
    const-string p0, "SensorsData getAndroidID is disabled"

    .line 191
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 194
    :cond_e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;

    move-result-object v0

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/LimitKey;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->isLimitKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 195
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;

    move-result-object p0

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/LimitKey;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getLimitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :cond_25
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->androidID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "SensorsData getIdentifier"

    .line 198
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->androidID:Ljava/lang/String;

    .line 200
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    .line 201
    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->androidID:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p0

    .line 205
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 207
    :cond_4b
    :goto_4b
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->androidID:Ljava/lang/String;

    return-object p0
.end method

.method public static getToolbarTitle(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 121
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.connect.common.AssistActivity"

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    return-object v0

    .line 129
    :cond_29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_34

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    goto :goto_35

    :cond_34
    move-object v3, v0

    :goto_35
    if-eqz v3, :cond_4c

    if-lt v1, v2, :cond_8c

    .line 134
    invoke-virtual {v3}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8c

    .line 135
    invoke-virtual {v3}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_88

    return-object p0

    .line 140
    :cond_4c
    :try_start_4c
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->compatActivity()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSupportActionBar"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8c

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTitle"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 146
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_8c

    .line 148
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_87} :catch_8c

    return-object p0

    :catch_88
    move-exception p0

    .line 157
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :catch_8c
    :cond_8c
    return-object v0
.end method

.method public static handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 2

    .line 248
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SASchemeHelper;->handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static initUniAppStatus()V
    .registers 1

    :try_start_0
    const-string v0, "io.dcloud.application.DCloudApplication"

    .line 265
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 266
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isUniApp:Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public static isOAIDEnabled()Z
    .registers 1

    .line 332
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isOAIDEnabled:Z

    return v0
.end method

.method public static isUniApp()Z
    .registers 1

    .line 273
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isUniApp:Z

    return v0
.end method

.method public static isValidAndroidId(Ljava/lang/String;)Z
    .registers 3

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 215
    :cond_8
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mInvalidAndroidId:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    :try_start_0
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 259
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_8
    return-void
.end method

.method public static showUpWebView(Landroid/content/Context;Ljava/lang/Object;Lorg/json/JSONObject;ZZ)V
    .registers 12

    const-string v0, "SA.SensorsDataUtils"

    .line 281
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorsDataUtils.showUpWebView called.x5WebView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportJellyBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enableVerify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_34

    if-nez p3, :cond_34

    const-string p0, "For applications targeted to API level JELLY_BEAN or below, this feature NOT SUPPORTED"

    .line 283
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_9c

    return-void

    :cond_34
    if-nez p1, :cond_37

    return-void

    :cond_37
    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 291
    :try_start_39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_88

    :try_start_3d
    const-string v2, "getSettings"

    new-array v3, v0, [Ljava/lang/Class;

    .line 293
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 294
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 296
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setJavaScriptEnabled"

    new-array v5, p3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, p3, [Ljava/lang/Object;

    .line 297
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_66} :catch_66

    :catch_66
    :cond_66
    :try_start_66
    const-string v2, "addJavascriptInterface"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 302
    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, p3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 303
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;

    invoke-direct {v3, p0, p2, p4}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/AppWebViewInterface;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    aput-object v3, v2, v0

    const-string p0, "SensorsData_APP_JS_Bridge"

    aput-object p0, v2, p3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception p0

    .line 305
    :try_start_89
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 307
    :goto_8c
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object p0

    const-string p2, "sensors_analytics_module_visual"

    const-string p4, "addVisualJavascriptInterface"

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-virtual {p0, p2, p4, p3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p0

    .line 309
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_a0
    return-void
.end method

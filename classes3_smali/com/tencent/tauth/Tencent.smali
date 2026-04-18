.class public Lcom/tencent/tauth/Tencent;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final REQUEST_LOGIN:I = 0x2711

.field public static USE_ONE_HOUR:Z = false

.field private static c:Lcom/tencent/tauth/Tencent; = null

.field private static d:Z = false


# instance fields
.field private final a:Lcom/tencent/connect/auth/c;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1, p2}, Lcom/tencent/connect/auth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    .line 82
    invoke-static {}, Lcom/tencent/open/b/b;->a()Lcom/tencent/open/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/open/b/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-eqz p0, :cond_37

    .line 1100
    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_37

    .line 1104
    :cond_8
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e

    return-object v0

    .line 1108
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    array-length v1, p0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_32

    if-lez v2, :cond_1e

    const/16 v3, 0x7c

    .line 1112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    :cond_1e
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_15

    .line 1116
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    :goto_37
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1120
    invoke-static {}, Lcom/tencent/open/b/b;->a()Lcom/tencent/open/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/open/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1095
    invoke-static {p1}, Lcom/tencent/tauth/Tencent;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1096
    invoke-static {}, Lcom/tencent/open/b/b;->a()Lcom/tencent/open/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/open/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const/4 v1, 0x0

    .line 215
    :try_start_3
    new-instance v2, Landroid/content/ComponentName;

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.tauth.AuthActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 219
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_17} :catch_53

    .line 239
    :try_start_17
    new-instance p1, Landroid/content/ComponentName;

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_29} :catch_2b

    const/4 p0, 0x1

    return p0

    .line 246
    :catch_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "没有在AndroidManifest.xml中检测到com.tencent.connect.common.AssistActivity,请加上com.tencent.connect.common.AssistActivity,详细信息请查看官网文档."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidManifest.xml 没有检测到com.tencent.connect.common.AssistActivity\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 221
    :catch_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.tauth.AuthActivity,并配置<data android:scheme=\"tencent"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" />,详细信息请查看官网文档."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" />\n</intent-filter>\n</activity>"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidManifest.xml 没有检测到com.tencent.tauth.AuthActivity"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
    .registers 7

    const-class v0, Lcom/tencent/tauth/Tencent;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;)V

    const-string v1, "openSDK_LOG.Tencent"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance()  -- start, appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    const-string p0, "openSDK_LOG.Tencent"

    const-string p1, "appId should not be empty!"

    .line 158
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_80

    .line 159
    monitor-exit v0

    return-object v2

    .line 161
    :cond_30
    :try_start_30
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    if-nez v1, :cond_3c

    .line 162
    new-instance v1, Lcom/tencent/tauth/Tencent;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    goto :goto_52

    .line 164
    :cond_3c
    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 165
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1, p1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 166
    new-instance v1, Lcom/tencent/tauth/Tencent;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    .line 170
    :cond_52
    :goto_52
    invoke-static {p1, p0}, Lcom/tencent/tauth/Tencent;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_56
    .catchall {:try_start_30 .. :try_end_56} :catchall_80

    if-nez v1, :cond_5a

    .line 171
    monitor-exit v0

    return-object v2

    :cond_5a
    :try_start_5a
    const-string v1, "createInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 174
    invoke-static {v1, v2}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {p1, p0}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object p0

    .line 178
    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/open/a/f;->a(Lcom/tencent/open/utils/i;)V

    const-string p0, "openSDK_LOG.Tencent"

    const-string p1, "createInstance()  -- end"

    .line 179
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p0, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;
    :try_end_7e
    .catchall {:try_start_5a .. :try_end_7e} :catchall_80

    monitor-exit v0

    return-object p0

    :catchall_80
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/tauth/Tencent;
    .registers 8

    const-class v0, Lcom/tencent/tauth/Tencent;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-static {p0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    const-string v1, "openSDK_LOG.Tencent"

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance()  -- start, appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", authorities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "createInstance_authority"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    const-string v3, "authorities"

    aput-object v3, v2, p0

    const/4 p0, 0x3

    aput-object p2, v2, p0

    .line 142
    invoke-static {v1, v2}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_42

    .line 145
    iput-object p2, p1, Lcom/tencent/tauth/Tencent;->b:Ljava/lang/String;

    goto :goto_49

    :cond_42
    const-string p0, "openSDK_LOG.Tencent"

    const-string p2, "null == tencent set mAuthorities fail"

    .line 147
    invoke-static {p0, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4b

    .line 150
    :goto_49
    monitor-exit v0

    return-object p1

    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAuthorities(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/tencent/tauth/Tencent;

    monitor-enter v0

    :try_start_3
    const-string v1, "getAuthorities"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 184
    invoke-static {v1, v2}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "TextUtils.isEmpty(appId)"

    .line 187
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_43

    .line 188
    monitor-exit v0

    return-object v2

    .line 191
    :cond_23
    :try_start_23
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    if-nez v1, :cond_30

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "sInstance == null"

    .line 192
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_43

    .line 193
    monitor-exit v0

    return-object v2

    .line 196
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    sget-object p0, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    iget-object p0, p0, Lcom/tencent/tauth/Tencent;->b:Ljava/lang/String;

    goto :goto_41

    :cond_3f
    const-string p0, ""
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_43

    :goto_41
    monitor-exit v0

    return-object p0

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .registers 6

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResultData() data = null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", listener = null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleResultData"

    .line 833
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public static isPermissionNotGranted()Z
    .registers 1

    .line 121
    sget-boolean v0, Lcom/tencent/tauth/Tencent;->d:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static isSupportPushToQZone(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "5.9.5"

    .line 949
    invoke-static {p0, v0}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    .line 951
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportPushToQZone() support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isSupportPushToQZone"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return p0
.end method

.method public static isSupportShareToQQ(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "isSupportShareToQQ()"

    .line 928
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {p0}, Lcom/tencent/open/utils/m;->c(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "isSupportShareToQQ"

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    const-string v1, "com.tencent.minihd.qq"

    .line 931
    invoke-static {p0, v1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 932
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_1e
    const-string v1, "4.1"

    .line 936
    invoke-static {p0, v1}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2f

    const-string v1, "com.tencent.tim"

    .line 937
    invoke-static {p0, v1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2f

    const/4 v3, 0x0

    .line 939
    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportShareToQQ() support="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public static onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z
    .registers 8

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResultData() reqcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data = null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", listener = null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "openSDK_LOG.Tencent"

    invoke-static {v3, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "requestCode"

    aput-object v3, v0, v2

    .line 749
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "resultCode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onActivityResultData"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/connect/common/UIListenerManager;->onActivityResult(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    move-result p0

    return p0
.end method

.method public static parseMiniParameters(Landroid/content/Intent;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "parseMiniParameters"

    .line 264
    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "openSDK_LOG.Tencent"

    if-nez p0, :cond_17

    const-string p0, "parseMiniParameters null == intent"

    .line 268
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_17
    :try_start_17
    const-string v3, "appParameter"

    .line 273
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseMiniParameters appParameter="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_54
    return-object v1

    .line 285
    :cond_55
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_61

    const-string p0, "parseMiniParameters uri==null"

    .line 287
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 291
    :cond_61
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_71

    const-string p0, "parseMiniParameters uriStr isEmpty"

    .line 293
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_71
    const/16 v3, 0x3f

    .line 297
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    const-string p0, "parseMiniParameters uriParam is empty"

    .line 299
    invoke-static {v2, p0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 303
    :cond_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseMiniParameters uriParam="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "&"

    .line 304
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 305
    array-length v3, p0

    const/4 v5, 0x0

    :goto_a5
    if-ge v5, v3, :cond_c3

    .line 307
    aget-object v6, p0, v5

    const-string v7, "="

    .line 308
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 309
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_ba

    .line 310
    aget-object v7, v6, v0

    aget-object v6, v6, v4

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_ba} :catch_bd

    :cond_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    :catch_bd
    move-exception p0

    const-string v0, "parseMiniParameters Exception"

    .line 314
    invoke-static {v2, v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c3
    return-object v1
.end method

.method public static resetQQAppInfoCache()V
    .registers 1

    const-string v0, "com.tencent.mobileqq"

    .line 132
    invoke-static {v0}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static resetTargetAppInfoCache()V
    .registers 0

    .line 128
    invoke-static {}, Lcom/tencent/open/utils/k;->a()V

    return-void
.end method

.method public static resetTimAppInfoCache()V
    .registers 1

    const-string v0, "com.tencent.tim"

    .line 136
    invoke-static {v0}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setCustomLogger(Lcom/tencent/open/log/Tracer;)V
    .registers 3

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setCustomLogger"

    .line 200
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/tencent/open/log/SLog;->getInstance()Lcom/tencent/open/log/SLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/open/log/SLog;->setCustomLogger(Lcom/tencent/open/log/Tracer;)V

    return-void
.end method

.method public static setIsPermissionGranted(Z)V
    .registers 3

    if-eqz p0, :cond_20

    .line 96
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 99
    :cond_1d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_22

    :cond_20
    const-string v0, ""

    .line 102
    :cond_22
    :goto_22
    invoke-static {p0, v0}, Lcom/tencent/tauth/Tencent;->setIsPermissionGranted(ZLjava/lang/String;)V

    return-void
.end method

.method public static setIsPermissionGranted(ZLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_f

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 108
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsPermissionGranted error! model= ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "openSDK_LOG.Tencent"

    invoke-static {p1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2b
    move-object p1, v0

    .line 115
    :cond_2c
    sput-boolean p0, Lcom/tencent/tauth/Tencent;->d:Z

    .line 117
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object p0

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindQQGroup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 8

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "bindQQGroup()"

    .line 1133
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "organizationId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "organizationName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "bindQQGroup"

    .line 1134
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    new-instance v0, Lcom/tencent/open/SocialOperation;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/SocialOperation;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 1137
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/open/SocialOperation;->bindQQGroup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public checkLogin(Lcom/tencent/tauth/IUiListener;)V
    .registers 4

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "checkLogin()"

    .line 578
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "checkLogin"

    .line 579
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/c;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 4

    .line 771
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccessToken() accessToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getAccessToken"

    .line 774
    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 4

    .line 763
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppId() appid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "getAppId"

    .line 766
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getExpiresIn()J
    .registers 5

    .line 779
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getExpireTimeInSecond()J

    move-result-wide v0

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExpiresIn() expiresin= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openSDK_LOG.Tencent"

    invoke-static {v3, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "getExpiresIn"

    invoke-static {v3, v2}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenId() openid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getOpenId"

    .line 800
    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getQQToken()Lcom/tencent/connect/auth/QQToken;
    .registers 3

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "getQQToken()"

    .line 889
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getQQToken"

    .line 890
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    return-object v0
.end method

.method public handleLoginData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLoginData() data = null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", listener = null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleLoginData"

    .line 817
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public initSessionCache(Lorg/json/JSONObject;)V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initSessionCache"

    .line 997
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_8
    const-string v0, "access_token"

    .line 1000
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    .line 1001
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    .line 1002
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1003
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1004
    invoke-virtual {p0, v0, v1}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0, p1}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    :cond_32
    const-string p1, "openSDK_LOG.Tencent"

    const-string v0, "initSessionCache()"

    .line 1007
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3a

    goto :goto_55

    :catch_3a
    move-exception p1

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSessionCache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQToken"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method public isQQInstalled(Landroid/content/Context;)Z
    .registers 4

    .line 958
    invoke-static {p1}, Lcom/tencent/open/utils/k;->b(Landroid/content/Context;)Z

    move-result p1

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQQInstalled() installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isQQInstalled"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public isReady()Z
    .registers 4

    .line 881
    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 882
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReady() --ready="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isReady"

    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public isSessionValid()Z
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->c()Z

    move-result v0

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSessionValid() isvalid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSessionValid"

    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public isSupportSSOLogin(Landroid/app/Activity;)Z
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "isSupportSSOLogin()"

    .line 901
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {p1}, Lcom/tencent/open/utils/m;->c(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "isSupportSSOLogin"

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    const-string v1, "com.tencent.minihd.qq"

    .line 904
    invoke-static {p1, v1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 905
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_1e
    const-string v1, "4.1"

    .line 912
    invoke-static {p1, v1}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2f

    const-string v1, "1.1"

    .line 913
    invoke-static {p1, v1}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2f

    const/4 v3, 0x0

    .line 917
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportSSOLogin() support="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public joinQQGroup(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "joinQQGroup()"

    .line 1150
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "organizationId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "joinQQGroup"

    .line 1151
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    new-instance v0, Lcom/tencent/open/SocialOperation;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/SocialOperation;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 1154
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialOperation;->joinGroup(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public loadSession(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 983
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/QQToken;->loadSession(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSession() appid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "openSDK_LOG.Tencent"

    invoke-static {v3, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "appid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "loadSession"

    .line 985
    invoke-static {p1, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public login(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;Ljava/util/Map;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tencent/tauth/IUiListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "login activity with params"

    .line 351
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "login_param"

    .line 352
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .registers 7

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login() with activity, scope is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "login_scope"

    .line 345
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .registers 8

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login() with activity, scope is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "qrcode"

    aput-object v2, v0, v1

    .line 366
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "login_qrcode"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I

    move-result p1

    return p1
.end method

.method public login(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .registers 7

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login() with fragment, scope is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "login_fragment_scope"

    .line 397
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/connect/auth/c;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public login(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .registers 13

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login() with fragment, scope is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "qrcode"

    aput-object v2, v0, v1

    .line 430
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "login_fragment_scope_qrcode"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object v2, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    const-string v6, ""

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/connect/auth/c;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public loginServerSide(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .registers 8

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginServerSide() with activity, scope = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",server_side"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "scope"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "loginServerSide_activity"

    .line 461
    invoke-static {v2, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public loginServerSide(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .registers 8

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginServerSide() with fragment, scope = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",server_side"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "scope"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "loginServerSide_fragment"

    .line 492
    invoke-static {v2, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/connect/auth/c;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 17

    move-object v2, p2

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginWithOEM() with activity, scope = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "scope"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v3, "qrcode"

    aput-object v3, v0, v1

    .line 514
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v3, "registerChannel"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    const-string v3, "installChannel"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object p6, v0, v1

    const/16 v1, 0x8

    const-string v3, "businessId"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object p7, v0, v1

    const-string v1, "loginWithOEM"

    .line 513
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, p0

    .line 516
    iget-object v0, v8, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .registers 4

    const-string p1, "openSDK_LOG.Tencent"

    const-string v0, "logout()"

    .line 525
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "logout"

    .line 526
    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/connect/auth/QQToken;->removeSession(Ljava/lang/String;)V

    return-void
.end method

.method public publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "publishToQzone()"

    .line 649
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "publishToQzone"

    .line 650
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    new-instance v0, Lcom/tencent/connect/share/QzonePublish;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QzonePublish;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 653
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QzonePublish;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .registers 7

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reAuth() with activity, scope = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "scope"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "reAuth"

    .line 556
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public reportDAU()V
    .registers 3

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "reportDAU() "

    .line 566
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "reportDAU"

    .line 567
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->a()V

    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "request()"

    .line 623
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "graphPath"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "httpMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "request"

    .line 624
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/open/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .registers 12

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "requestAsync()"

    .line 599
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "graphPath"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "httpMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "requestAsync"

    .line 600
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method

.method public saveSession(Lorg/json/JSONObject;)V
    .registers 5

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSession() length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.Tencent"

    invoke-static {v2, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "saveSession"

    .line 971
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/QQToken;->saveSession(Lorg/json/JSONObject;)Z

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccessToken(), expiresIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setAccessToken"

    .line 856
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/auth/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setAvatar()"

    .line 665
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setAvatar"

    .line 666
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "picture"

    .line 668
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exitAnim"

    .line 669
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 670
    new-instance v1, Lcom/tencent/connect/avatar/QQAvatar;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 671
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p3, p2}, Lcom/tencent/connect/avatar/QQAvatar;->setAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;I)V

    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;II)V
    .registers 9

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setAvatar()"

    .line 685
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setAvatar_anim"

    .line 686
    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "exitAnim"

    .line 688
    invoke-virtual {p2, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 690
    invoke-virtual {p1, p4, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 691
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setAvatarByQQ(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setAvatarByQQ()"

    .line 702
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setAvatarByQQ"

    .line 703
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    new-instance v0, Lcom/tencent/connect/avatar/QQAvatar;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 706
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/avatar/QQAvatar;->setAvatarByQQ(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setDynamicAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setDynamicAvatar()"

    .line 717
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setDynamicAvatar"

    .line 718
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    new-instance v0, Lcom/tencent/connect/avatar/QQAvatar;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 721
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/avatar/QQAvatar;->setDynamicAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setEmotions(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/tencent/tauth/IUiListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/tauth/IUiListener;",
            ")V"
        }
    .end annotation

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "saveQQEmotions()"

    .line 731
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setEmotions"

    .line 732
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    new-instance v0, Lcom/tencent/connect/emotion/QQEmotion;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/connect/emotion/QQEmotion;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 735
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/emotion/QQEmotion;->setEmotions(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .registers 5

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setOpenId() --start"

    .line 870
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setOpenId"

    .line 871
    invoke-static {v2, v1}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/tencent/connect/auth/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "setOpenId() --end"

    .line 874
    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "shareToQQ()"

    .line 630
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "shareToQQ"

    .line 631
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, -0x13

    .line 634
    invoke-interface {p3, v0}, Lcom/tencent/tauth/IUiListener;->onWarning(I)V

    .line 636
    :cond_1c
    new-instance v0, Lcom/tencent/connect/share/QQShare;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 637
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "shareToQzone()"

    .line 641
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "shareToQzone"

    .line 642
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    new-instance v0, Lcom/tencent/connect/share/QzoneShare;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QzoneShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 645
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public startAuthManagePage(Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V
    .registers 6

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startAuthManagePage"

    .line 1089
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    new-instance v0, Lcom/tencent/connect/api/QQAuthManage;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/connect/api/QQAuthManage;-><init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V

    .line 1091
    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/api/QQAuthManage;->gotoManagePage(Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V

    return-void
.end method

.method public startIMAio(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startIMAio()"

    .line 1022
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "uin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "startIMAio"

    .line 1023
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "thirdparty2c"

    .line 1025
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/tauth/Tencent;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startIMAudio(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startIMAudio()"

    .line 1037
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "uin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "startIMAudio"

    .line 1038
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "audio_chat"

    .line 1040
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/tauth/Tencent;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "chatType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const-string v1, "startIMConversation"

    .line 1059
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    new-instance v0, Lcom/tencent/open/im/IM;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/im/IM;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 1062
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/open/im/IM;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startIMVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startIMVideo()"

    .line 1052
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "uin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "startIMVideo"

    .line 1053
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "video_chat"

    .line 1055
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/tauth/Tencent;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startMiniApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startMiniApp()"

    .line 1076
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "miniAppId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "miniAppPath"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    const-string v2, "miniAppVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const-string v1, "startMiniApp"

    .line 1077
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    new-instance v2, Lcom/tencent/open/miniapp/MiniApp;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/open/miniapp/MiniApp;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    const-string v4, "mini_program_or_game"

    const-string v6, "21"

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .line 1080
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/miniapp/MiniApp;->startMiniApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unBindQQGroup(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .registers 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "unBindQQGroup()"

    .line 1167
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "organizationId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "unBindQQGroup"

    .line 1168
    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    new-instance v0, Lcom/tencent/open/SocialOperation;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/SocialOperation;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 1171
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/open/SocialOperation;->unBindGroup(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.class public Lcom/tencent/smtt/sdk/QbSdk;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Z = false

.field private static C:Z = true

.field private static D:Lcom/tencent/smtt/sdk/TbsListener; = null

.field private static E:Lcom/tencent/smtt/sdk/TbsListener; = null

.field public static final EXTENSION_INIT_FAILURE:I = -0x1869f

.field private static F:Z = false

.field public static final FILERADER_MENUDATA:Ljava/lang/String; = "menuData"

.field private static G:Z = false

.field public static final KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String; = "SET_SENDREQUEST_AND_UPLOAD"

.field public static final LOGIN_TYPE_KEY_PARTNER_CALL_POS:Ljava/lang/String; = "PosID"

.field public static final LOGIN_TYPE_KEY_PARTNER_ID:Ljava/lang/String; = "ChannelID"

.field public static final PARAM_KEY_FEATUREID:Ljava/lang/String; = "param_key_featureid"

.field public static final PARAM_KEY_FUNCTIONID:Ljava/lang/String; = "param_key_functionid"

.field public static final PARAM_KEY_POSITIONID:Ljava/lang/String; = "param_key_positionid"

.field public static final QBMODE:I = 0x2

.field public static final SHARE_PREFERENCES_NAME:Ljava/lang/String; = "tbs_file_open_dialog_config"

.field public static final SVNVERSION:Ljava/lang/String; = "jnizz"

.field public static final TBSMODE:I = 0x1

.field public static final TID_QQNumber_Prefix:Ljava/lang/String; = "QQ:"

.field public static final VERSION:I = 0x1

.field static a:Z = false

.field static b:Z = false

.field static c:Z = true

.field static d:Ljava/lang/String; = null

.field static e:Z = false

.field static f:J = 0x0L

.field static g:J = 0x0L

.field static h:Ljava/lang/Object; = null

.field static i:Z = true

.field public static isDefaultDialog:Z = false

.field static j:Z = true

.field static k:Z = false

.field static volatile l:Z = false

.field static m:Lcom/tencent/smtt/sdk/TbsListener; = null

.field public static mDisableUseHostBackupCore:Z = false

.field static n:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static o:I = 0x0

.field private static p:Ljava/lang/String; = ""

.field private static q:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static r:Ljava/lang/Object; = null

.field private static s:Z = false

.field public static sIsVersionPrinted:Z = false

.field private static t:[Ljava/lang/String; = null

.field private static u:Ljava/lang/String; = "NULL"

.field private static v:Ljava/lang/String; = "UNKNOWN"

.field private static w:Z = false

.field private static x:I = 0x0

.field private static y:I = 0xaa

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->h:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/smtt/sdk/QbSdk$7;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/QbSdk$7;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xd8

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    const-string p1, "initForPatch return false!"

    :goto_f
    invoke-virtual {p0, v2, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    return-object v1

    :cond_13
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    const-string p1, "incrUpdate"

    invoke-static {v0, p1, v4, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_33

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_33
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    const-string p1, "incrUpdate return null!"

    goto :goto_f
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "iconResId"

    const-string v1, "topBarBgColor"

    const-string v2, "menuData"

    const-string v3, "style"

    const/4 v4, 0x0

    if-nez p1, :cond_c

    return-object v4

    :cond_c
    :try_start_c
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a

    const-string v6, "0"

    goto :goto_20

    :cond_1a
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_20
    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_80

    :try_start_23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_30

    :catch_30
    :try_start_30
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "menuItems"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_78

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_4f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_53} :catch_80

    if-ge v6, v7, :cond_73

    const/4 v7, 0x5

    if-ge v6, v7, :cond_73

    :try_start_58
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_70} :catch_70

    :catch_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_73
    :try_start_73
    const-string p0, "resArray"

    invoke-virtual {v5, p0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_78
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7f} :catch_80

    :cond_7f
    return-object v5

    :catch_80
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 8

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_e

    const p0, -0x1869f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/Bundle;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "miscCall"

    invoke-static {p0, p1, v1, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2c

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x2

    new-array v0, p0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v3

    sget-object p1, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string p2, "dispatchEmergencyCommand"

    invoke-static {p1, p2, v0, p0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_49

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    :try_start_a
    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSysWebViewInner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    const-string p1, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QbSdk.SysWebViewForcedInner..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v1, 0x191

    new-instance v2, Ljava/lang/Throwable;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_a .. :try_end_47} :catchall_49

    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Landroid/content/Context;)Z
    .registers 13

    const-string v0, "QbSdk"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    return v3

    :cond_9
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_19

    const-string p0, "QbSdk initExtension (false) optDir == null"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_19
    new-instance v4, Ljava/io/File;

    const-string v5, "tbs_sdk_extension_dex.jar"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2c

    const-string p0, "QbSdk initExtension (false) dexFile.exists()=false"

    invoke-static {v0, p0, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new DexLoader #3 dexFile is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Z

    new-instance v5, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v11

    move-object v6, v5

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v5, v2}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_79

    return v3

    :catchall_79
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initExtension sys WebView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static a(Landroid/content/Context;I)Z
    .registers 3

    const/16 v0, 0x4e20

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;II)Z
    .registers 11

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    const-string v2, "SET_SENDREQUEST_AND_UPLOAD"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "QbSdk"

    const-string p1, "[QbSdk.isX5Disabled] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget v2, Lcom/tencent/smtt/sdk/f;->a:I

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {v0, p0, v2}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_39

    return v1

    :cond_39
    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    aput-object v4, v2, v1

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const v6, 0xabbf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v5

    const-string p2, "isX5Disabled"

    invoke-static {p0, p2, v2, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6d

    :goto_66
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6d
    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Class;

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, p2, v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8a

    goto :goto_66

    :cond_8a
    return v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x2

    invoke-static {p2, p0}, Lcom/tencent/smtt/sdk/QbSdk;->isSuportOpenFile(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->sIsVersionPrinted:Z

    const/4 v1, 0x1

    const-string v2, "QbSdk"

    if-nez v0, :cond_11

    const-string v0, "svn revision: jnizz; SDK_VERSION_CODE: 43967; SDK_VERSION_NAME: 4.3.0.67"

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->sIsVersionPrinted:Z

    :cond_11
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    if-nez p1, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QbSdk init: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v0, 0x19e

    new-instance v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3

    :cond_3f
    sget-boolean p1, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    if-eqz p1, :cond_59

    const-string p1, "QbSdk init mIsSysWebViewForcedByOuter = true"

    invoke-static {v2, p1, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v0, 0x192

    new-instance v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->u:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3

    :cond_59
    sget-boolean p1, Lcom/tencent/smtt/sdk/QbSdk;->C:Z

    if-nez p1, :cond_60

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->d(Landroid/content/Context;)V

    :cond_60
    :try_start_60
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_80

    const-string p1, "QbSdk init (false) optDir == null"

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v0, 0x138

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "QbSdk.init (false) TbsCoreShareDir is null"

    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3

    :cond_80
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0
    :try_end_84
    .catchall {:try_start_60 .. :try_end_84} :catchall_2bd

    const-string v4, "sTbsVersion: "

    const/4 v5, 0x0

    if-eqz v0, :cond_cf

    :try_start_89
    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-eqz v0, :cond_c8

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v6

    if-eq v0, v6, :cond_c8

    sput-object v5, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    sput-object v5, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string p1, "QbSdk init (false) ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY!"

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v0, 0x12e

    new-instance v1, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; AvailableTbsCoreVersion: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3

    :cond_c8
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v0

    :cond_cc
    :goto_cc
    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    goto :goto_137

    :cond_cf
    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-eqz v0, :cond_135

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/smtt/sdk/o;->a(ZLandroid/content/Context;)I

    move-result v0

    sget v6, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-eq v6, v0, :cond_cc

    sput-object v5, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    sput-object v5, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QbSdk init (false) not isThirdPartyApp tbsCoreInstalledVer="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QbSdk init (false) not isThirdPartyApp sTbsVersion="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v1, 0x12f

    new-instance v5, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; tbsCoreInstalledVer: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1, v5}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3

    :cond_135
    const/4 v0, 0x0

    goto :goto_cc

    :goto_137
    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_15b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is in blacklist,can not load! return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_15b
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-eqz v0, :cond_164

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-eqz v0, :cond_164

    return v1

    :cond_164
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0
    :try_end_168
    .catchall {:try_start_89 .. :try_end_168} :catchall_2bd

    const-string v4, "tbs_sdk_extension_dex.jar"

    if-eqz v0, :cond_18d

    :try_start_16c
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17c

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19b

    :cond_17c
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v0, 0x130

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "isShareTbsCoreAvailable false!"

    invoke-direct {v1, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3

    :cond_18d
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    :goto_19b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_19f
    .catchall {:try_start_16c .. :try_end_19f} :catchall_2bd

    if-nez v4, :cond_23b

    :try_start_1a1
    const-string p1, "QbSdk init (false) tbs_sdk_extension_dex.jar is not exist!"

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v4, "tbs_jars_fusion_dex.jar"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1bd
    .catchall {:try_start_1a1 .. :try_end_1bd} :catchall_236

    if-eqz v0, :cond_1fc

    const-string v0, "tbs_sdk_extension_dex not exist(with fusion dex)!"

    if-lez p1, :cond_1e1

    :try_start_1c3
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v4, 0x1023

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_1dd
    invoke-virtual {v1, p0, v4, v5}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_23a

    :cond_1e1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v4, 0x1024

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_1fb
    .catchall {:try_start_1c3 .. :try_end_1fb} :catchall_236

    goto :goto_1dd

    :cond_1fc
    const-string v0, "tbs_sdk_extension_dex not exist(without fusion dex)!"

    if-lez p1, :cond_21b

    :try_start_200
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v4, 0x1019

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1dd

    :cond_21b
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v4, 0x101a

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_235
    .catchall {:try_start_200 .. :try_end_235} :catchall_236

    goto :goto_1dd

    :catchall_236
    move-exception p1

    :try_start_237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_23a
    return v3

    :cond_23b
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_246

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object p1

    goto :goto_24a

    :cond_246
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_24a
    move-object v8, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QbSdk init optDirExtension #1 is "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new DexLoader #1 dexFile is "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Z

    new-instance p1, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v9

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v4, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {p1, v4}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v0, "setClientVersion"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p1, v0, v4, v5}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2bc
    .catchall {:try_start_237 .. :try_end_2bc} :catchall_2bd

    return v1

    :catchall_2bd
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QbSdk init Throwable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x132

    invoke-virtual {v0, p0, v1, p1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v3
.end method

.method static a(Landroid/content/Context;ZZ)Z
    .registers 13

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getDisabledCoreVersion()I

    move-result p2

    const-string v0, "QbSdk"

    const/4 v1, 0x0

    if-eqz p2, :cond_1d

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v2

    if-ne p2, v2, :cond_1d

    const-string p0, "force use sys by remote switch"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1d
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->i(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_33

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 p2, 0x12e

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    return v1

    :cond_33
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_3f

    const-string p0, "QbSdk.init failure!"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3f
    sget-object p1, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    new-array v4, p2, [Ljava/lang/Object;

    const v5, 0xabbf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "canLoadX5Core"

    invoke-static {p1, v5, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "AuthenticationFail"

    const-string v4, "loaderror"

    if-eqz p1, :cond_2c1

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_6d

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    return v1

    :cond_6d
    instance-of v2, p1, Landroid/os/Bundle;

    const-string v3, ""

    if-nez v2, :cond_96

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p2

    const/16 v0, 0x14a

    new-instance v2, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string p0, "ret not instance of bundle"

    invoke-static {v4, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_96
    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p2

    const/16 v0, 0x14b

    new-instance v2, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string p0, "empty bundle"

    invoke-static {v4, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c2
    const/4 p1, -0x1

    :try_start_c3
    const-string v5, "result_code"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c9} :catch_ca

    goto :goto_e4

    :catch_ca
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundle.getInt(KEY_RESULT_CODE) error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_e4
    if-nez v0, :cond_e8

    const/4 v5, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v5, 0x0

    :goto_e9
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v6

    const/16 v7, 0x133

    const-string v8, "0"

    if-eqz v6, :cond_12b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Lcom/tencent/smtt/sdk/f;->a(I)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v6, 0x5

    if-ne p2, v6, :cond_11e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    :cond_11e
    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v6, 0x6

    if-eq p2, v6, :cond_1b9

    sput-object v3, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    goto/16 :goto_1b9

    :cond_12b
    :try_start_12b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12d} :catch_145

    const/16 v6, 0xc

    const-string v9, "tbs_core_version"

    if-lt v3, v6, :cond_13a

    :try_start_133
    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    goto :goto_147

    :cond_13a
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    if-nez v3, :cond_147

    sput-object v8, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_144} :catch_145

    goto :goto_147

    :catch_145
    sput-object v8, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    :cond_147
    :goto_147
    :try_start_147
    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/tencent/smtt/sdk/QbSdk;->o:I
    :try_end_14f
    .catch Ljava/lang/NumberFormatException; {:try_start_147 .. :try_end_14f} :catch_150

    goto :goto_152

    :catch_150
    sput v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    :goto_152
    sget v3, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-static {v3}, Lcom/tencent/smtt/sdk/f;->a(I)V

    sget v3, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-nez v3, :cond_16a

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "sTbsVersion is 0"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v7, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v1

    :cond_16a
    if-lez v3, :cond_170

    const/16 v6, 0x6362

    if-le v3, v6, :cond_176

    :cond_170
    const/16 v6, 0x6380

    if-ne v3, v6, :cond_175

    goto :goto_176

    :cond_175
    const/4 p2, 0x0

    :cond_176
    :goto_176
    if-eqz p2, :cond_1b9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "is_obsolete --> delete old core:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TbsDownload"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v7, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v1

    :cond_1b9
    :goto_1b9
    :try_start_1b9
    const-string p2, "tbs_jarfiles"

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_2b6

    instance-of p2, p2, [Ljava/lang/String;

    if-nez p2, :cond_1e5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sJarFiles not instanceof String[]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v7, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v1

    :cond_1e5
    :try_start_1e5
    const-string p2, "tbs_librarypath"

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1ed} :catch_2b5

    const/4 p2, 0x0

    if-eqz v0, :cond_201

    :try_start_1f0
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v3, "getErrorCodeForLogReport"

    new-array v6, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v6, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1fc} :catch_1fd

    goto :goto_201

    :catch_1fd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_201
    :goto_201
    const/4 v1, -0x2

    const-string v2, "detail: "

    if-eq v0, v1, :cond_271

    if-eq v0, p1, :cond_231

    if-eqz v0, :cond_2b2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v1, 0x19f

    new-instance v3, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "errcode"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_2b2

    :cond_231
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_255

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_2af

    :cond_255
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v7, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_2b2

    :cond_271
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_295

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_2af

    :cond_295
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 v0, 0x194

    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_2af
    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :cond_2b2
    :goto_2b2
    move v1, v5

    goto/16 :goto_33f

    :catch_2b5
    return v1

    :catchall_2b6
    move-exception p1

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p2

    const/16 v0, 0x149

    invoke-virtual {p2, p0, v0, p1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v1

    :cond_2c1
    sget-object p1, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    new-array v0, p2, [Ljava/lang/Class;

    aput-object v3, v0, v1

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/smtt/sdk/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "canLoadX5"

    invoke-static {p1, v5, v0, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_336

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2e9

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    return v1

    :cond_2e9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_33f

    invoke-static {}, Lcom/tencent/smtt/sdk/f;->d()I

    move-result v0

    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-static {}, Lcom/tencent/smtt/sdk/f;->d()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_306

    if-nez p0, :cond_306

    const/4 v1, 0x1

    :cond_306
    if-nez v1, :cond_335

    const-string p2, "318"

    invoke-static {v4, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isX5Disable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(Boolean) ret:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_335
    return v1

    :cond_336
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 p2, 0x134

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    :cond_33f
    :goto_33f
    if-nez v1, :cond_346

    const-string p0, "319"

    invoke-static {v4, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_346
    return v1
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    return p0
.end method

.method protected static b()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "getGUID"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method static b(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "com.tencent.portfolio"

    const-string v1, "QbSdk"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    return v2

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string v3, "clearPluginConfigFile #1"

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "app_versionname"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearPluginConfigFile oldAppVersionName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " newAppVersionName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_4f

    goto :goto_6d

    :cond_4f
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_6d

    :cond_56
    const-string v0, "plugin_setting"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p0, "clearPluginConfigFile done"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_8 .. :try_end_6d} :catchall_6f

    :cond_6d
    :goto_6d
    const/4 p0, 0x1

    return p0

    :catchall_6f
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPluginConfigFile error is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static synthetic c()Lcom/tencent/smtt/sdk/TbsListener;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->D:Lcom/tencent/smtt/sdk/TbsListener;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 12

    const-string v0, "QbSdk"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    return v3

    :cond_9
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_19

    const-string p0, "QbSdk initForX5DisableConfig (false) optDir == null"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v4
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_e2

    const-string v5, "tbs_sdk_extension_dex.jar"

    if-eqz v4, :cond_3b

    :try_start_21
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_31

    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_31
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x130

    invoke-virtual {v2, p0, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    return v1

    :cond_3b
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v6

    :goto_49
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_60

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x196

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "initForX5DisableConfig failure -- tbs_sdk_extension_dex.jar is not exist!"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return v1

    :cond_60
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6b

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :cond_6b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_6f
    move-object v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QbSdk init optDirExtension #3 is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new DexLoader #4 dexFile is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Z

    new-instance v2, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v10

    move-object v5, v2

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v5, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "setClientVersion"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p0, v2, v4, v5}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e1
    .catchall {:try_start_21 .. :try_end_e1} :catchall_e2

    return v3

    :catchall_e2
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initForX5DisableConfig sys WebView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static canLoadVideo(Landroid/content/Context;)Z
    .registers 6

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "canLoadVideo"

    invoke-static {v0, v3, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x139

    goto :goto_30

    :cond_2a
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x13a

    :goto_30
    invoke-virtual {v1, p0, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    :cond_33
    if-nez v0, :cond_36

    goto :goto_3c

    :cond_36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3c
    return v4
.end method

.method public static canLoadX5(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

.method public static canLoadX5FirstTimeThirdApp(Landroid/content/Context;)Z
    .registers 12

    const-string v0, "QbSdk"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.moji.mjweather"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ne v2, v4, :cond_19

    return v3

    :cond_19
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-nez v2, :cond_d0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string p0, "QbSdk canLoadX5FirstTimeThirdApp (false) optDir == null"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tbs_sdk_extension_dex.jar"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_44

    const-string p0, "QbSdk canLoadX5FirstTimeThirdApp (false) dexFile.exists()=false"

    invoke-static {v0, p0, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_44
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    :cond_4f
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_53
    move-object v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QbSdk init optDirExtension #2 is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new DexLoader #2 dexFile is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Z

    new-instance v2, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v10

    move-object v5, v2

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-nez v2, :cond_d0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_c9

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    const/16 v2, 0xe3

    const-string v3, "host context is null!"

    invoke-virtual {p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    return v1

    :cond_c9
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d0
    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "canLoadX5CoreForThirdApp"

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e9

    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_e9

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_e8
    .catchall {:try_start_3 .. :try_end_e8} :catchall_ea

    return p0

    :cond_e9
    return v1

    :catchall_ea
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canLoadX5FirstTimeThirdApp sys WebView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static canOpenFile(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/smtt/sdk/QbSdk$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/smtt/sdk/QbSdk$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static canOpenMimeFileType(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Z)Z

    return p1
.end method

.method public static canOpenWebPlus(Landroid/content/Context;)Z
    .registers 10

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    if-nez v0, :cond_a

    invoke-static {}, Lcom/tencent/smtt/sdk/a;->a()I

    move-result v0

    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canOpenWebPlus - totalRAM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QbSdk"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-lt v0, v2, :cond_12f

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    sget v2, Lcom/tencent/smtt/sdk/QbSdk;->y:I

    if-ge v0, v2, :cond_30

    goto/16 :goto_12f

    :cond_30
    if-nez p0, :cond_33

    return v3

    :cond_33
    const/4 v0, 0x0

    :try_start_34
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    const-string v5, "tbs.conf"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_119

    :try_start_4d
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "android_sdk_max_supported"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_sdk_min_supported"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v5, :cond_fe

    if-ge v7, v6, :cond_75

    goto/16 :goto_fe

    :cond_75
    const-string v5, "tbs_core_version"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_7f
    .catchall {:try_start_4d .. :try_end_7f} :catchall_116

    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_82

    :catch_82
    const/4 v2, 0x1

    :try_start_83
    new-instance v5, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string v7, "tbs_extension.conf"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_e9

    :try_start_93
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "tbs_local_version"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "app_versioncode_for_switch"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0x54c5638

    if-eq v4, v8, :cond_e4

    if-ne v5, v8, :cond_b7

    goto :goto_e4

    :cond_b7
    if-le v4, v5, :cond_ba

    goto :goto_e4

    :cond_ba
    if-ne v4, v5, :cond_e4

    if-lez v7, :cond_c5

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v4

    if-eq v7, v4, :cond_c5

    goto :goto_e4

    :cond_c5
    const-string v4, "x5_disabled"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "switch_backupcore_enable"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_e1
    .catchall {:try_start_93 .. :try_end_e1} :catchall_e8

    if-nez p0, :cond_e4

    const/4 v3, 0x1

    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_f4

    goto :goto_f4

    :catchall_e8
    move-object v0, v6

    :catchall_e9
    :try_start_e9
    const-string p0, "canOpenWebPlus - isX5Disabled Exception"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_f7

    if-eqz v0, :cond_f3

    :try_start_f0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_f3

    :catch_f3
    :cond_f3
    const/4 v3, 0x1

    :catch_f4
    :goto_f4
    xor-int/lit8 p0, v3, 0x1

    return p0

    :catchall_f7
    move-exception p0

    if-eqz v0, :cond_fd

    :try_start_fa
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_fd

    :catch_fd
    :cond_fd
    throw p0

    :cond_fe
    :goto_fe
    :try_start_fe
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canOpenWebPlus - sdkVersion: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_fe .. :try_end_112} :catchall_116

    :try_start_112
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_115

    :catch_115
    return v3

    :catchall_116
    move-exception p0

    move-object v0, v2

    goto :goto_11a

    :catchall_119
    move-exception p0

    :goto_11a
    :try_start_11a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "canOpenWebPlus - canLoadX5 Exception"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_128

    if-eqz v0, :cond_127

    :try_start_124
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_127

    :catch_127
    :cond_127
    return v3

    :catchall_128
    move-exception p0

    if-eqz v0, :cond_12e

    :try_start_12b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_12e

    :catch_12e
    :cond_12e
    throw p0

    :cond_12f
    :goto_12f
    return v3
.end method

.method public static canUseVideoFeatrue(Landroid/content/Context;I)Z
    .registers 6

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "canUseVideoFeatrue"

    invoke-static {p0, p1, v1, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_24

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_24
    return v3
.end method

.method public static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_17

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_15} :catch_17

    const/4 p0, 0x1

    return p0

    :catch_17
    :cond_17
    :goto_17
    return v0
.end method

.method public static checkContentProviderPrivilage(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_6e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const/4 v1, 0x0

    :try_start_20
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.core.content.FileProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_39} :catch_3c

    if-nez v2, :cond_40

    return v0

    :catch_3c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".provider"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_6a

    const-string v2, "QbSdk"

    const-string v3, "Must declare com.tencent.smtt.utils.FileProvider in AndroidManifest above Android 7.0,please view document in x5.tencent.com"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :cond_6e
    :goto_6e
    return v0
.end method

.method public static checkTbsValidity(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "QbSdk"

    const-string v1, "sys WebView: SysWebViewForcedBy checkTbsValidity"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->forceSysWebView()V

    :cond_1c
    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static clearAllDefaultBrowser(Landroid/content/Context;)V
    .registers 3

    const-string v0, "tbs_file_open_dialog_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static clearAllWebViewCache(Landroid/content/Context;Z)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllWebViewCache("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QbSdk"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_25
    new-instance v3, Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {v3, p0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getWebViewClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_48

    if-eqz v3, :cond_64

    :try_start_30
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;Z)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_45

    :cond_43
    const/4 v2, 0x1

    goto :goto_64

    :catchall_45
    move-exception v2

    const/4 v3, 0x1

    goto :goto_4b

    :catchall_48
    move-exception v3

    move-object v2, v3

    const/4 v3, 0x0

    :goto_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearAllWebViewCache exception 2 -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_64
    :goto_64
    if-eqz v2, :cond_6c

    const-string p0, "is_in_x5_mode --> no need to clear system webview!"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6c
    :try_start_6c
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_86

    const-string v3, "searchBoxJavaBridge_"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibilityTraversal"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_86
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    if-eqz p1, :cond_95

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_95
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebStorage;->deleteAllData()V

    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V
    :try_end_b8
    .catchall {:try_start_6c .. :try_end_b8} :catchall_b9

    goto :goto_d2

    :catchall_b9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearAllWebViewCache exception 1 -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d2
    return-void
.end method

.method public static clearDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tbs_file_open_dialog_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ui/dialog/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "*/*"

    :cond_13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_tbs_picked_default_browser_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static closeFileReader(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/x;->p()V

    :cond_14
    return-void
.end method

.method public static closeNetLogAndSavaToLocal()Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :try_start_16
    const-string v2, "com.tencent.smtt.livelog.NetLogManager"

    const-string v3, "closeNetLogAndSavaToLocal"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2c

    check-cast v0, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    :cond_2c
    return-object v1
.end method

.method public static continueLoadSo(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-boolean p0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "continueLoadSo"

    invoke-static {p0, v2, v1, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public static createMiniQBShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Z
    .registers 13

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->isMiniQBShortCutExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    return v1

    :cond_15
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v4, 0x0

    instance-of v5, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2c

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2c
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object p3

    const-string v2, "QbSdk"

    const-string v5, "qbsdk createMiniQBShortCut"

    invoke-static {v2, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    aput-object v0, v6, v3

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const-class v0, Landroid/graphics/Bitmap;

    const/4 v8, 0x3

    aput-object v0, v6, v8

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v1

    aput-object p1, v0, v3

    aput-object p2, v0, v7

    aput-object v4, v0, v8

    const-string p0, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p1, "createMiniQBShortCut"

    invoke-virtual {p3, p0, p1, v6, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "qbsdk after createMiniQBShortCut ret: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_75

    return v3

    :cond_75
    return v1
.end method

.method static synthetic d()Lcom/tencent/smtt/sdk/TbsListener;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->E:Lcom/tencent/smtt/sdk/TbsListener;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 12

    const-string v0, "tbs_preload_x5_recorder"

    const-string v1, "tbs_preload_x5_counter"

    const-string v2, "QbSdk"

    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->C:Z

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_c
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_5c

    const/16 v8, 0xb

    const-string v9, "tbs_preloadx5_check_cfg_file"

    const/4 v10, 0x4

    if-lt v7, v8, :cond_1a

    :try_start_15
    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    :goto_1e
    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_5c

    if-ltz v7, :cond_2b

    add-int/lit8 v7, v7, 0x1

    if-le v7, v10, :cond_29

    return-void

    :cond_29
    move v8, v7

    goto :goto_2c

    :cond_2b
    const/4 v8, -0x1

    :goto_2c
    :try_start_2c
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v9
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_5a

    if-gtz v9, :cond_37

    return-void

    :cond_37
    if-gt v7, v10, :cond_47

    :try_start_39
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_47

    :catchall_45
    move-exception v0

    goto :goto_5f

    :cond_47
    :goto_47
    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_77

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    add-int/2addr v0, v3

    invoke-interface {v7, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_45

    goto :goto_78

    :catchall_5a
    move-exception v0

    goto :goto_5e

    :catchall_5c
    move-exception v0

    const/4 v8, -0x1

    :goto_5e
    const/4 v9, -0x1

    :goto_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tbs_preload_x5_counter Inc exception:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    const/4 v0, -0x1

    :goto_78
    const/4 v3, 0x3

    if-le v0, v3, :cond_f6

    :try_start_7b
    const-string v0, "tbs_preload_x5_version"

    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-ne v0, v9, :cond_b9

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/m;->a()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9f

    invoke-static {p0, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    :cond_9f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QbSdk - preload_x5_check: tbs core "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is deleted!"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b5
    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_b9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QbSdk - preload_x5_check -- reset exception core_ver:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; value:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b5

    :goto_d3
    const-string p0, "tbs_precheck_disable_version"

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_db
    .catchall {:try_start_7b .. :try_end_db} :catchall_dc

    goto :goto_f5

    :catchall_dc
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbs_preload_x5_counter disable version exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f5
    return-void

    :cond_f6
    if-lez v8, :cond_10c

    if-gt v8, v3, :cond_10c

    const-string v0, "QbSdk - preload_x5_check -- before creation!"

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    const-string p0, "QbSdk - preload_x5_check -- after creation!"

    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    :cond_10c
    const/4 v4, -0x1

    :goto_10d
    :try_start_10d
    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_139

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/2addr p0, v5

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11f
    .catchall {:try_start_10d .. :try_end_11f} :catchall_120

    goto :goto_139

    :catchall_120
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbs_preload_x5_counter Dec exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_139
    :goto_139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QbSdk -- preload_x5_check result:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteMiniQBShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v6, 0x2

    aput-object v0, v4, v6

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v1

    aput-object p1, v0, v5

    aput-object p2, v0, v6

    const-string p0, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p1, "deleteMiniQBShortCut"

    invoke-virtual {v2, p0, p1, v4, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_41

    return v5

    :cond_41
    return v1
.end method

.method public static disAllowThirdAppDownload()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    return-void
.end method

.method public static disableAutoCreateX5Webview()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Z

    return-void
.end method

.method public static fileInfoDetect(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_3a

    :try_start_c
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "fileInfoDetect"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/webkit/ValueCallback;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static forceSysWebView()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SysWebViewForcedByOuter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->u:Ljava/lang/String;

    const-string v0, "QbSdk"

    const-string v1, "sys WebView: SysWebViewForcedByOuter"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getApkFileSize(Landroid/content/Context;)J
    .registers 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_apkfilesize"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_14
    return-wide v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "/proc/self/cmdline"

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    const/16 v0, 0x100

    :try_start_a
    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v5

    if-lez v5, :cond_1d

    if-ge v4, v0, :cond_1d

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    move v4, v6

    goto :goto_e

    :cond_1d
    if-lez v4, :cond_2f

    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_33

    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2e
    return-object v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_40

    goto :goto_44

    :catchall_33
    move-exception v0

    goto :goto_37

    :catchall_35
    move-exception v0

    move-object v1, p0

    :goto_37
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    if-eqz v1, :cond_44

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_44
    :goto_44
    return-object p0

    :catchall_45
    move-exception p0

    if-eqz v1, :cond_50

    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    throw p0
.end method

.method public static getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    instance-of v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    array-length p0, v0

    new-array p1, p0, [Ljava/lang/String;

    :goto_a
    if-ge v2, p0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    return-object p1

    :cond_25
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    const-string p0, "getJarFiles"

    invoke-static {v0, p0, v3, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, [Ljava/lang/String;

    if-eqz p1, :cond_4b

    goto :goto_51

    :cond_4b
    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    :goto_51
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getDownloadWithoutWifi()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->F:Z

    return v0
.end method

.method public static getIsSysWebViewForcedByOuter()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    return v0
.end method

.method public static getJarFilesAndLibraryPath(Landroid/content/Context;)Z
    .registers 8

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "QbSdk"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const-string p0, "getJarFilesAndLibraryPath sExtensionObj is null"

    :goto_9
    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Object;

    const v6, 0xabbf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "canLoadX5CoreAndNotLoadSo"

    invoke-static {v0, v6, v4, v5}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJarFilesAndLibraryPath bundle is null and coreverison is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/tencent/smtt/sdk/o;->a(ZLandroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_43
    const-string p0, "tbs_jarfiles"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    const-string p0, "tbs_librarypath"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    return v3
.end method

.method public static getMiniQBVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/x;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOnlyDownload()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->k:Z

    return v0
.end method

.method public static getQQBuildNumber()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static getSettings()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    return-object v0
.end method

.method public static getTBSInstalling()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->G:Z

    return v0
.end method

.method public static getTID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Lcom/tencent/smtt/utils/b;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "tbs_64"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    const-string v1, "tbs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getTbsResourcesPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTbsSdkVersion()I
    .registers 1

    const v0, 0xabbf

    return v0
.end method

.method public static getTbsVersion(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result p0

    return p0

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getTbsVersionForCrash(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result p0

    return p0

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p0}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/m;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;)V

    :cond_24
    return v0
.end method

.method public static getTmpDirTbsVersion(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/m;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/o;->e(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_15
    invoke-static {p0}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v2, "copy_status"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/tencent/smtt/sdk/o;->e(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_2b
    return v1
.end method

.method public static initBuglyAsync(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    return-void
.end method

.method public static initForinitAndNotLoadSo(Landroid/content/Context;)V
    .registers 9

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-nez v0, :cond_55

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "QbSdk"

    if-nez v0, :cond_16

    const-string p0, "QbSdk initForinitAndNotLoadSo optDir == null"

    :goto_12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    new-instance v2, Ljava/io/File;

    const-string v3, "tbs_sdk_extension_dex.jar"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_26

    const-string p0, "QbSdk initForinitAndNotLoadSo dexFile.exists()=false"

    goto :goto_12

    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Z

    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v7

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    :cond_55
    return-void
.end method

.method public static initTbsSettings(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-nez v0, :cond_7

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    goto :goto_f

    :cond_7
    :try_start_7
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public static initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 6

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    if-nez p0, :cond_d

    const-string p0, "QbSdk"

    const-string p1, "initX5Environment,context=null"

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->b(Landroid/content/Context;)Z

    new-instance v0, Lcom/tencent/smtt/sdk/QbSdk$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/sdk/QbSdk$5;-><init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->E:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget v3, Lcom/tencent/smtt/sdk/f;->a:I

    if-nez v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {v0, p0, v3}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Z)V

    :cond_2d
    new-instance v0, Lcom/tencent/smtt/sdk/QbSdk$6;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/sdk/QbSdk$6;-><init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    invoke-static {p0, v2, v2, v1, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;ZZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    return-void
.end method

.method public static installLocalQbApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/tencent/smtt/sdk/f;->a(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->b()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_18
    return v1
.end method

.method public static intentDispatch(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 p1, 0x0

    if-nez p0, :cond_4

    return p1

    :cond_4
    const-string v0, "mttbrowser://miniqb/ch=icon?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "url="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_20

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :cond_20
    move-object p2, v1

    :goto_21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_26
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "unknown"

    :goto_33
    const-string v4, "ChannelID"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "PosID"

    const-string v4, "14004"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "miniqb://home"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "qb://navicard/addCard?cardId=168&cardName=168"

    goto :goto_4b

    :cond_4a
    move-object v3, p2

    :goto_4b
    const-string v4, "QbSdk.startMiniQBToLoadUrl"

    invoke-static {v2, v3, v0, v4, v1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I

    move-result p3

    if-nez p3, :cond_6f

    const/4 p0, 0x1

    return p0

    :cond_6f
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_72
    return p1
.end method

.method public static isInDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "tbs_file_open_dialog_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ui/dialog/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "*/*"

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_tbs_picked_default_browser_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMiniQBShortCutExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 p2, 0x0

    if-nez p0, :cond_4

    return p2

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return p2

    :cond_b
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p2

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, p2

    aput-object p1, v1, v4

    const-string p0, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p1, "isMiniQBShortCutExist"

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_49

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_44

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_49
    return p2
.end method

.method public static isNeedInitX5FirstTime()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->w:Z

    return v0
.end method

.method public static isSuportOpenFile(Ljava/lang/String;I)Z
    .registers 81

    move/from16 v0, p1

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const-string v3, "rar"

    const-string v4, "zip"

    const-string v5, "tar"

    const-string v6, "bz2"

    const-string v7, "gz"

    const-string v8, "7z"

    const-string v9, "doc"

    const-string v10, "docx"

    const-string v11, "ppt"

    const-string v12, "pptx"

    const-string v13, "xls"

    const-string v14, "xlsx"

    const-string v15, "txt"

    const-string v16, "pdf"

    const-string v17, "epub"

    const-string v18, "chm"

    const-string v19, "html"

    const-string v20, "htm"

    const-string v21, "xml"

    const-string v22, "mht"

    const-string v23, "url"

    const-string v24, "ini"

    const-string v25, "log"

    const-string v26, "bat"

    const-string v27, "php"

    const-string v28, "js"

    const-string v29, "lrc"

    const-string v30, "jpg"

    const-string v31, "jpeg"

    const-string v32, "png"

    const-string v33, "gif"

    const-string v34, "bmp"

    const-string v35, "tiff"

    const-string v36, "webp"

    const-string v37, "mp3"

    const-string v38, "m4a"

    const-string v39, "aac"

    const-string v40, "amr"

    const-string v41, "wav"

    const-string v42, "ogg"

    const-string v43, "mid"

    const-string v44, "ra"

    const-string v45, "wma"

    const-string v46, "mpga"

    const-string v47, "ape"

    const-string v48, "flac"

    const-string v49, "RTSP"

    const-string v50, "RTP"

    const-string v51, "SDP"

    const-string v52, "RTMP"

    const-string v53, "mp4"

    const-string v54, "flv"

    const-string v55, "avi"

    const-string v56, "3gp"

    const-string v57, "3gpp"

    const-string v58, "webm"

    const-string v59, "ts"

    const-string v60, "ogv"

    const-string v61, "m3u8"

    const-string v62, "asf"

    const-string v63, "wmv"

    const-string v64, "rmvb"

    const-string v65, "rm"

    const-string v66, "f4v"

    const-string v67, "dat"

    const-string v68, "mov"

    const-string v69, "mpg"

    const-string v70, "mkv"

    const-string v71, "mpeg"

    const-string v72, "mpeg1"

    const-string v73, "mpeg2"

    const-string v74, "xvid"

    const-string v75, "dvd"

    const-string v76, "vcd"

    const-string v77, "vob"

    const-string v78, "divx"

    filled-new-array/range {v3 .. v78}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "doc"

    const-string v4, "docx"

    const-string v5, "ppt"

    const-string v6, "pptx"

    const-string v7, "xls"

    const-string v8, "xlsx"

    const-string v9, "txt"

    const-string v10, "pdf"

    const-string v11, "epub"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c3

    return v2

    :cond_c3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_c7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_d0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_c7
.end method

.method public static isTbsCoreInited()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/f;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isX5DisabledSync(Landroid/content/Context;)Z
    .registers 7

    invoke-static {p0}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/m;->c()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_13

    return v2

    :cond_13
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v3

    :cond_1a
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    aput-object v5, v4, v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const p0, 0xabbf

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "isX5DisabledSync"

    invoke-static {v0, p0, v4, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4c

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4c
    return v3
.end method

.method public static loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const-class v1, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v1

    :try_start_a
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-eqz v2, :cond_10

    monitor-exit v1

    return-void

    :cond_10
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-nez v2, :cond_1b

    const-string v2, "QbSdk"

    const-string v3, "QbSdk loadTBSSDKExtension sExtensionClass is null"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_13b

    :cond_1b
    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_22
    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v8

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v7

    aput-object v0, v10, v6

    aput-object v0, v10, v4

    aput-object v0, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_3a

    const/4 v10, 0x1

    goto :goto_3c

    :catchall_3a
    move-object v9, v5

    const/4 v10, 0x0

    :goto_3c
    :try_start_3c
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c7

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_5f

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    const/16 p1, 0xe3

    const-string v0, "host context is null!"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_11e

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_13b

    return-void

    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_69

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_69
    if-nez v10, :cond_b2

    if-nez v11, :cond_97

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v8

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v7

    aput-object v0, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v8

    aput-object v11, v3, v7

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    aput-object p1, v3, v4

    aput-object v5, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_93
    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    goto/16 :goto_139

    :cond_97
    sget-object p1, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v8

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v8

    aput-object v11, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_93

    :cond_b2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v8

    aput-object v11, v0, v7

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v6

    aput-object p1, v0, v4

    aput-object v5, v0, v2

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_93

    :cond_c7
    if-nez v10, :cond_ee

    sget-object p1, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v8

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_e3
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v8

    aput-object p0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_93

    :cond_ee
    const-string v0, "com.tencent.mm"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    if-nez v0, :cond_101

    const-string v0, "notLoadSo"

    goto :goto_102

    :cond_101
    move-object v0, v5

    :goto_102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_10c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_10c
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v8

    aput-object p0, v3, v7

    aput-object v5, v3, v6

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11c
    .catchall {:try_start_5f .. :try_end_11c} :catchall_11e

    goto/16 :goto_93

    :catchall_11e
    move-exception p0

    :try_start_11f
    const-string p1, "QbSdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throwable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_139
    monitor-exit v1

    return-void

    :catchall_13b
    move-exception p0

    monitor-exit v1
    :try_end_13d
    .catchall {:try_start_11f .. :try_end_13d} :catchall_13b

    throw p0
.end method

.method public static openBrowserList(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_c

    const-string v0, "ChannelId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_c
    const-string v0, ""

    :goto_e
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ui/dialog/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 p1, 0x0

    sput-boolean p1, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    new-instance p1, Lcom/tencent/smtt/sdk/ui/dialog/d;

    const-string v3, "选择其它应用打开"

    move-object v1, p1

    move-object v2, p0

    move-object v4, v9

    move-object v5, p2

    move-object v6, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/smtt/sdk/ui/dialog/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/ui/dialog/d;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string p1, "com.tencent.mtt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChannelID"

    invoke-virtual {v9, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "PosID"

    const-string v1, "4"

    invoke-virtual {v9, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5d
    invoke-virtual {v9, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "big_brother_source_key"

    invoke-virtual {v9, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p3, :cond_b2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "default browser:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a3

    :cond_7c
    sget-boolean p2, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    if-eqz p2, :cond_a7

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "提示"

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "此文件无法打开"

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/tencent/smtt/sdk/QbSdk$10;

    invoke-direct {p1}, Lcom/tencent/smtt/sdk/QbSdk$10;-><init>()V

    const-string p2, "确定"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    if-eqz p3, :cond_b2

    const-string p0, "can not open"

    :goto_a3
    invoke-interface {p3, p0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_b2

    :cond_a7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance p0, Lcom/tencent/smtt/sdk/QbSdk$2;

    invoke-direct {p0, p3}, Lcom/tencent/smtt/sdk/QbSdk$2;-><init>(Lcom/tencent/smtt/sdk/ValueCallback;)V

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method public static openBrowserList(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/QbSdk;->openBrowserList(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method public static openFileReader(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/ValueCallback;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->checkContentProviderPrivilage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p0, -0x5

    return p0

    :cond_11
    const-string v0, "QbSdk"

    if-eqz p1, :cond_fc

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    move-object v7, v1

    const-string v1, "apk"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_4e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4e

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4e
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_5b

    const-string p0, "uri failed"

    invoke-interface {p3, p0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p0, -0x6

    return p0

    :cond_5b
    const-string p3, "application/vnd.android.package-archive"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 p2, 0x1fa

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    const-string p0, "open openFileReader ret = 4"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_73
    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->isBrowserInstalled(Landroid/content/Context;)Z

    move-result v1

    const/4 v9, 0x3

    if-eqz v1, :cond_b7

    invoke-static {p0, p1, v7}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v10, 0x1fb

    if-nez v1, :cond_92

    const-string p2, "openFileReader open in QB isQBSupport: false  ret = 3"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p3}, Lcom/tencent/smtt/sdk/QbSdk;->openFileReaderListWithQBDownload(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    invoke-virtual {p1, p0, v10}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    return v9

    :cond_92
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {p0, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/tencent/smtt/sdk/QbSdk;->startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_b4

    if-eqz p3, :cond_a7

    const-string p1, "open QB"

    invoke-interface {p3, p1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_a7
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    invoke-virtual {p1, p0, v10}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    const-string p0, "open openFileReader open QB ret = 1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b4
    const-string v1, "openFileReader startQBForDoc return false"

    goto :goto_b9

    :cond_b7
    const-string v1, "openFileReader QQ browser not installed"

    :goto_b9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_c3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_c3
    const-string v0, "local"

    const-string v1, "true"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/tencent/smtt/utils/TbsLog;->setWriteLogJIT(Z)V

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/QbSdk;->startMiniQBToLoadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/webkit/ValueCallback;)I

    move-result p2

    if-eqz p2, :cond_f1

    invoke-static {p0, p1, p3}, Lcom/tencent/smtt/sdk/QbSdk;->openFileReaderListWithQBDownload(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    const/16 p1, 0x1ff

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    return v9

    :cond_f1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 p2, 0x1fe

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    const/4 p0, 0x2

    return p0

    :cond_fc
    if-eqz p3, :cond_103

    const-string p1, "filepath error"

    invoke-interface {p3, p1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_103
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 p2, 0x1fd

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    const-string p0, "open openFileReader filepath error ret -1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static openFileReaderListWithQBDownload(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_183

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.qim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.androidqqmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_183

    :cond_20
    if-eqz p2, :cond_29

    const-string v0, "ChannelId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    const-string v0, ""

    :goto_2b
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ui/dialog/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4d

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4d
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v10, "QbSdk"

    if-nez v1, :cond_60

    const-string p0, "openFileReaderListWithQBDownload,uri failed"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "uri failed"

    invoke-interface {p3, p0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void

    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFileReaderListWithQBDownload,fileUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mimeType:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    new-instance p1, Lcom/tencent/smtt/sdk/ui/dialog/d;

    const-string v3, "选择其它应用打开"

    move-object v1, p1

    move-object v2, p0

    move-object v4, v9

    move-object v5, p2

    move-object v6, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/smtt/sdk/ui/dialog/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/ui/dialog/d;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFileReaderListWithQBDownload,defaultBrowser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_c0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v1, "extraMenuEvent:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    const-string p0, "openFileReaderListWithQBDownload, is default extra menu action"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void

    :cond_c0
    if-eqz p2, :cond_117

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_117

    invoke-static {p0, p2}, Lcom/tencent/smtt/sdk/QbSdk;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_117

    const-string p1, "openFileReaderListWithQBDownload, is default normal menu action"

    invoke-static {v10, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.tencent.mtt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ef

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChannelID"

    invoke-virtual {v9, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "PosID"

    const-string v1, "4"

    invoke-virtual {v9, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_ef
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_fa

    const-string p1, "big_brother_source_key"

    invoke-virtual {v9, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_fa
    invoke-virtual {v9, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p3, :cond_183

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "default browser:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_183

    :cond_117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.tencent.rtxlite"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14b

    sget-boolean p2, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    if-eqz p2, :cond_14b

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "提示"

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "此文件无法打开"

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/tencent/smtt/sdk/QbSdk$8;

    invoke-direct {p1}, Lcom/tencent/smtt/sdk/QbSdk$8;-><init>()V

    const-string p2, "确定"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_14b
    sget-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    if-eqz p0, :cond_161

    const-string p0, "isDefaultDialog=true"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_17e

    const-string p0, "isDefaultDialog=true, can not open"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "can not open"

    :goto_15d
    invoke-interface {p3, p0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_17e

    :cond_161
    :try_start_161
    const-string p0, "isDefaultDialog=false,try to open dialog"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance p0, Lcom/tencent/smtt/sdk/QbSdk$9;

    invoke-direct {p0, p3}, Lcom/tencent/smtt/sdk/QbSdk$9;-><init>(Lcom/tencent/smtt/sdk/ValueCallback;)V

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_171} :catch_172

    goto :goto_17e

    :catch_172
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "isDefaultDialog=false,try to open dialog, but failed"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TbsReaderDialogClosed"

    goto :goto_15d

    :cond_17e
    :goto_17e
    const-string p0, "unexpected return, dialogBuilder not show!"

    invoke-static {v10, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_183
    :goto_183
    return-void
.end method

.method public static openFileReaderListWithQBDownload(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/QbSdk;->openFileReaderListWithQBDownload(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method public static openFileWithQB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open openFileReader startMiniQBToLoadUrl filepath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QbSdk"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->checkContentProviderPrivilage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, -0x1

    return p0

    :cond_1e
    if-eqz p1, :cond_7c

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->isBrowserInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {p0, p1, v5}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string p0, "openFileReader open in QB isQBSupport: false"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    :cond_43
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "ChannelID"

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PosID"

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/tencent/smtt/sdk/stat/MttLoader;->openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_6e

    const/4 p0, 0x0

    return p0

    :cond_6e
    const-string p0, "openFileReader startQBForDoc return false"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0

    :cond_75
    const-string p0, "openFileReader QQ browser not installed"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x4

    return p0

    :cond_7c
    const-string p0, "open openFileReader filepath error"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x5

    return p0
.end method

.method public static openNetLog(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :try_start_14
    const-string v1, "com.tencent.smtt.livelog.NetLogManager"

    const-string v2, "openNetLog"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    nop

    :catch_28
    :cond_28
    return-void
.end method

.method public static declared-synchronized preInit(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 7

    const-class v0, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preInit -- processName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preInit -- stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->l:Z

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->s:Z

    if-nez v1, :cond_67

    new-instance v1, Lcom/tencent/smtt/sdk/QbSdk$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/tencent/smtt/sdk/QbSdk$3;-><init>(Landroid/os/Looper;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;Landroid/content/Context;)V

    new-instance p1, Lcom/tencent/smtt/sdk/QbSdk$4;

    invoke-direct {p1, p0, v1}, Lcom/tencent/smtt/sdk/QbSdk$4;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string p0, "tbs_preinit"

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->s:Z
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_69

    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static reset(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;Z)V

    return-void
.end method

.method public static reset(Landroid/content/Context;Z)V
    .registers 7

    const-string v0, "QbSdk"

    const-string v1, "QbSdk reset!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_8
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->stopDownload()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v3

    const v4, 0xa924

    if-le p1, v4, :cond_2d

    if-eq p1, v3, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "core_share_decouple"

    invoke-static {v3, v1, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;ZLjava/lang/String;)V

    const-string v3, "delete downloaded apk success"

    invoke-static {v0, v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "bugly_switch.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_5c
    if-eqz p1, :cond_92

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;)Z

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;)V
    :try_end_78
    .catchall {:try_start_8 .. :try_end_78} :catchall_79

    goto :goto_92

    :catchall_79
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QbSdk reset exception:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public static resetDecoupleCore(Landroid/content/Context;)V
    .registers 4

    const-string v0, "QbSdk"

    const-string v1, "QbSdk resetDecoupleCore!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_8
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    goto :goto_2d

    :catchall_14
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QbSdk resetDecoupleCore exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public static setCurrentID(Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "QQ:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0000000000000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->z:Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method public static setDisableUnpreinitBySwitch(Z)V
    .registers 2

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDisableUnpreinitBySwitch -- mDisableUnpreinitBySwitch is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QbSdk"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDisableUseHostBackupCoreBySwitch(Z)V
    .registers 2

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->mDisableUseHostBackupCore:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDisableUseHostBackupCoreBySwitch -- mDisableUseHostBackupCore is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->mDisableUseHostBackupCore:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QbSdk"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDownloadWithoutWifi(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->F:Z

    return-void
.end method

.method public static setNeedInitX5FirstTime(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->w:Z

    return-void
.end method

.method public static setNetLogEncryptionKey(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :try_start_14
    const-string v1, "com.tencent.smtt.livelog.NetLogManager"

    const-string v2, "setNetLogEncryptionKey"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    nop

    :catch_28
    :cond_28
    return-void
.end method

.method public static setNewDnsHostList(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :try_start_14
    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "setNewDnsHostList"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    nop

    :catch_24
    :cond_24
    return-void
.end method

.method public static setOnlyDownload(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->k:Z

    return-void
.end method

.method public static setQQBuildNumber(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->A:Ljava/lang/String;

    return-void
.end method

.method public static setTBSInstallingStatus(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->G:Z

    return-void
.end method

.method public static setTbsListener(Lcom/tencent/smtt/sdk/TbsListener;)V
    .registers 1

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->D:Lcom/tencent/smtt/sdk/TbsListener;

    return-void
.end method

.method public static setTbsLogClient(Lcom/tencent/smtt/utils/TbsLogClient;)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->setTbsLogClient(Lcom/tencent/smtt/utils/TbsLogClient;)Z

    return-void
.end method

.method public static setUploadCode(Landroid/content/Context;I)V
    .registers 4

    const/16 v0, 0x82

    if-lt p1, v0, :cond_1b

    const/16 v0, 0x8b

    if-gt p1, v0, :cond_1b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object p0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "tbs_needdownload_code"

    :goto_14
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_30

    :cond_1b
    const/16 v0, 0x96

    if-lt p1, v0, :cond_30

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_30

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object p0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "tbs_startdownload_code"

    goto :goto_14

    :cond_30
    :goto_30
    return-void
.end method

.method public static startMiniQBToLoadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/webkit/ValueCallback;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    if-nez p0, :cond_e

    const/16 p0, -0x64

    return p0

    :cond_e
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    const-string v2, "QbSdk"

    if-eqz v1, :cond_7f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.nd.android.pandahome2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v3, 0x638f

    if-lt v1, v3, :cond_34

    goto :goto_37

    :cond_34
    const/16 p0, -0x65

    return p0

    :cond_37
    :goto_37
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v3

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I

    move-result p1

    if-nez p1, :cond_50

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p2

    const/16 p3, 0x1f7

    invoke-virtual {p2, p0, p3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    goto :goto_6a

    :cond_50
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    const/16 p2, 0x1f8

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    :goto_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startMiniQBToLoadUrl  ret = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_7f
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    const/16 p2, 0x1f6

    invoke-virtual {p1, p0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    const-string p0, "startMiniQBToLoadUrl  ret = -102"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x66

    return p0
.end method

.method public static startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z
    .registers 12

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v1, "ChannelID"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PosID"

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/smtt/sdk/stat/MttLoader;->openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static startQBForVideo(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "ChannelID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "PosID"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->openVideoWithQb(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public static startQBToLoadurl(Landroid/content/Context;Ljava/lang/String;ILcom/tencent/smtt/sdk/WebView;)Z
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "ChannelID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "PosID"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p3, :cond_63

    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.mm"

    if-eq v1, v2, :cond_32

    const-string v2, "com.tencent.mobileqq"

    if-ne v1, v2, :cond_63

    :cond_32
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    const-string v2, "com.tencent.smtt.webkit.WebViewList"

    const-string v3, "getCurrentMainWebviewJustForQQandWechat"

    new-array v4, p2, [Ljava/lang/Class;

    new-array v5, p2, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_63

    check-cast v1, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/tencent/smtt/sdk/WebView;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_60} :catch_62

    move-object p3, v1

    goto :goto_63

    :catch_62
    nop

    :cond_63
    :goto_63
    const-string v1, "QbSdk.startQBToLoadurl"

    invoke-static {p0, p1, v0, v1, p3}, Lcom/tencent/smtt/sdk/stat/MttLoader;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I

    move-result p0

    if-nez p0, :cond_6c

    const/4 p2, 0x1

    :cond_6c
    return p2
.end method

.method public static startQBWithBrowserlist(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/QbSdk;->startQBToLoadurl(Landroid/content/Context;Ljava/lang/String;ILcom/tencent/smtt/sdk/WebView;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->openBrowserList(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    :cond_a
    return p2
.end method

.method public static startQbOrMiniQBToLoadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/ValueCallback;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_37

    const-string v2, "PosID"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v6, "getAdWebViewInfoFromX5Core"

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :cond_37
    const/4 v2, 0x0

    const-string v3, "QbSdk.startMiniQBToLoadUrl"

    invoke-static {p0, p1, p2, v3, v2}, Lcom/tencent/smtt/sdk/stat/MttLoader;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_70

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.nd.android.pandahome2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result v2

    const/16 v4, 0x638f

    if-lt v2, v4, :cond_5e

    goto :goto_5f

    :cond_5e
    return v0

    :cond_5f
    :goto_5f
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v5

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I

    move-result p0

    if-nez p0, :cond_6f

    return v3

    :cond_6f
    return v0

    :cond_70
    return v3
.end method

.method public static unForceSysWebView()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    const-string v0, "QbSdk"

    const-string v1, "sys WebView: unForceSysWebView called"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized unPreInit(Landroid/content/Context;)Z
    .registers 1

    const-class p0, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public static uploadNetLog(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :try_start_14
    const-string v1, "com.tencent.smtt.livelog.NetLogManager"

    const-string v2, "uploadNetLog"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    nop

    :catch_28
    :cond_28
    return-void
.end method

.method public static useSoftWare()Z
    .registers 6

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "useSoftWare"

    invoke-static {v0, v4, v2, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/smtt/sdk/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v4, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2b
    if-nez v0, :cond_2e

    goto :goto_34

    :cond_2e
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_34
    return v1
.end method

.class public Lcom/tencent/smtt/sdk/stat/MttLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/stat/MttLoader$a;,
        Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "ChannelID"

.field public static final ENTRY_ID:Ljava/lang/String; = "entryId"

.field public static final KEY_ACTIVITY_NAME:Ljava/lang/String; = "KEY_ACT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_APP_NAME:Ljava/lang/String; = "KEY_APPNAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_EUSESTAT:Ljava/lang/String; = "KEY_EUSESTAT"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "KEY_PKG"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PID:Ljava/lang/String; = "KEY_PID"

.field public static final MTT_ACTION:Ljava/lang/String; = "com.tencent.QQBrowser.action.VIEW"

.field public static final MTT_ACTION_SP:Ljava/lang/String; = "com.tencent.QQBrowser.action.VIEWSP"

.field public static final PID_ARTICLE_NEWS:Ljava/lang/String; = "21272"

.field public static final PID_MOBILE_QQ:Ljava/lang/String; = "50079"

.field public static final PID_QQPIM:Ljava/lang/String; = "50190"

.field public static final PID_QZONE:Ljava/lang/String; = "10494"

.field public static final PID_WECHAT:Ljava/lang/String; = "10318"

.field public static final POS_ID:Ljava/lang/String; = "PosID"

.field public static final QQBROWSER_DIRECT_DOWNLOAD_URL:Ljava/lang/String; = "https://mdc.html5.qq.com/d/directdown.jsp?channel_id=50079"

.field public static final QQBROWSER_DOWNLOAD_URL:Ljava/lang/String; = "https://mdc.html5.qq.com/mh?channel_id=50079&u="

.field public static final QQBROWSER_PARAMS_FROME:Ljava/lang/String; = ",from="

.field public static final QQBROWSER_PARAMS_PACKAGENAME:Ljava/lang/String; = ",packagename="

.field public static final QQBROWSER_PARAMS_PD:Ljava/lang/String; = ",product="

.field public static final QQBROWSER_PARAMS_VERSION:Ljava/lang/String; = ",version="

.field public static final QQBROWSER_SCHEME:Ljava/lang/String; = "mttbrowser://url="

.field public static final RESULT_INVALID_CONTEXT:I = 0x3

.field public static final RESULT_INVALID_URL:I = 0x2

.field public static final RESULT_NOT_INSTALL_QQBROWSER:I = 0x4

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_QQBROWSER_LOW:I = 0x5

.field public static final RESULT_UNKNOWN:I = 0x1

.field public static final STAT_KEY:Ljava/lang/String; = "StatKey"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p0, 0xd

    goto :goto_34

    :cond_11
    const-string v0, "com.qzone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 p0, 0xe

    goto :goto_34

    :cond_1c
    const-string v0, "com.tencent.WBlog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, 0xf

    goto :goto_34

    :cond_27
    const-string v0, "com.tencent.mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/16 p0, 0x18

    goto :goto_34

    :cond_32
    const/16 p0, 0x1a

    :goto_34
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/stat/MttLoader$a;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_1b

    return-object v0

    :cond_1b
    new-instance p1, Lcom/tencent/smtt/sdk/stat/MttLoader$a;

    invoke-direct {p1, v0}, Lcom/tencent/smtt/sdk/stat/MttLoader$a;-><init>(Lcom/tencent/smtt/sdk/stat/MttLoader$1;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.mtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->a:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p0, p1, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->b:Ljava/lang/String;

    return-object p1

    :cond_47
    const-string v2, "com.tencent.qbx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->a:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->b:Ljava/lang/String;

    goto :goto_24

    :cond_5a
    return-object p1
.end method

.method private static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_33

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    mul-int/lit8 v5, v2, 0x2

    const/16 v6, 0xa

    if-lt v4, v6, :cond_1c

    add-int/lit8 v4, v4, 0x61

    sub-int/2addr v4, v6

    goto :goto_1e

    :cond_1c
    add-int/lit8 v4, v4, 0x30

    :goto_1e
    int-to-char v4, v4

    aput-char v4, v1, v5

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v5, v5, 0x1

    if-lt v3, v6, :cond_2b

    add-int/lit8 v3, v3, 0x61

    sub-int/2addr v3, v6

    goto :goto_2d

    :cond_2b
    add-int/lit8 v3, v3, 0x30

    :goto_2d
    int-to-char v3, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_33
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_32

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v1, :cond_29

    if-lez v3, :cond_29

    if-le v1, v3, :cond_29

    return v0

    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_32
    :goto_32
    return v0
.end method

.method public static getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;
    .registers 15

    const-string v0, "com.tencent.mtt.x86"

    const-string v1, "com.tencent.qbx5"

    const-string v2, "com.tencent.qbx"

    const-string v3, ""

    const-string v4, "\\."

    const-string v5, "ADRQB_"

    const-string v6, "com.tencent.mtt"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "x5_proxy_setting"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "qb_install_status"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-instance v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    invoke-direct {v8}, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;-><init>()V

    if-eqz v7, :cond_27

    return-object v8

    :cond_27
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_e1

    const/4 v10, 0x0

    const/4 v11, 0x2

    :try_start_2d
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iput v11, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    iput-object v6, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->packageName:Ljava/lang/String;

    iput-object v5, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    if-eqz v10, :cond_64

    iget v12, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    const v13, 0x668a0

    if-le v12, v13, :cond_64

    iput v12, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->vn:Ljava/lang/String;
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_63} :catch_e1

    return-object v8

    :catch_64
    :cond_64
    :try_start_64
    invoke-virtual {v7, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iput v9, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    iput-object v2, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->packageName:Ljava/lang/String;

    const-string v2, "ADRQBX_"

    iput-object v2, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_70} :catch_71
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_e1

    goto :goto_ba

    :catch_71
    :try_start_71
    invoke-virtual {v7, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    const/4 v2, 0x1

    iput v2, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    iput-object v1, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->packageName:Ljava/lang/String;

    const-string v1, "ADRQBX5_"

    iput-object v1, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7e} :catch_e1

    goto :goto_ba

    :catch_7f
    :try_start_7f
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iput-object v6, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->packageName:Ljava/lang/String;

    iput v11, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    iput-object v5, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_89
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_89} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_e1

    goto :goto_ba

    :catch_8a
    :try_start_8a
    invoke-virtual {v7, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iput-object v0, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->packageName:Ljava/lang/String;

    iput v11, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    iput-object v5, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_94} :catch_95

    goto :goto_ba

    :catch_95
    :try_start_95
    const-string v0, "https://mdc.html5.qq.com/mh?channel_id=50079&u="

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/stat/MttLoader$a;

    move-result-object p0

    if-eqz p0, :cond_ba

    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_af} :catch_b9

    :try_start_af
    iget-object p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->b:Ljava/lang/String;

    iput-object p0, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->packageName:Ljava/lang/String;

    iput v11, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    iput-object v5, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b7} :catch_b7

    :catch_b7
    move-object v10, v0

    goto :goto_ba

    :catch_b9
    nop

    :cond_ba
    :goto_ba
    if-eqz v10, :cond_e1

    :try_start_bc
    iget p0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p0, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->quahead:Ljava/lang/String;

    iget-object p0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->vn:Ljava/lang/String;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e1} :catch_e1

    :catch_e1
    :cond_e1
    return-object v8
.end method

.method public static getDownloadUrlWithQb(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "https://mdc.html5.qq.com/mh?channel_id=50079&u="

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0
.end method

.method public static getValidQBUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object p0

    iget v1, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_19

    :goto_17
    const/4 v0, 0x1

    goto :goto_23

    :cond_19
    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    iget p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const/16 v1, 0x21

    if-ge p0, v1, :cond_23

    goto :goto_17

    :cond_23
    :goto_23
    if-eqz v0, :cond_2a

    invoke-static {p1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getDownloadUrlWithQb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    return-object p1
.end method

.method public static isBrowserInstalled(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object p0

    iget p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public static isBrowserInstalledEx(Landroid/content/Context;)Z
    .registers 8

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->vn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_10} :catch_19

    const-wide/32 v4, 0x5b935c

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1d

    const/4 v1, 0x1

    goto :goto_1d

    :catch_19
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1d
    :goto_1d
    iget p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const v2, 0x92d9c

    if-lt p0, v2, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0
.end method

.method public static isGreatBrowserVer(Landroid/content/Context;JJ)Z
    .registers 10

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->vn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_10} :catch_16

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1a

    const/4 v1, 0x1

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1a
    :goto_1a
    iget p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    int-to-long p0, p0

    cmp-long p2, p0, p3

    if-ltz p2, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0
.end method

.method public static isSupportQBScheme(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object p0

    iget v0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    return v1

    :cond_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    iget p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const/16 v0, 0x2a

    if-ge p0, v0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportingTbsTips(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object p0

    iget v0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget p0, p0, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const v0, 0x8d9a0

    if-lt p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebView;",
            ")I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    invoke-static {p1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1b
    const/4 v0, 0x2

    :try_start_1c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_130

    if-nez p1, :cond_23

    return v0

    :cond_23
    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->getBrowserInfo(Landroid/content/Context;)Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;

    move-result-object v1

    iget v2, v1, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    if-ne v2, v3, :cond_2e

    return v4

    :cond_2e
    const/16 v3, 0x21

    if-ne v2, v0, :cond_38

    iget v2, v1, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    if-ge v2, v3, :cond_38

    const/4 p0, 0x5

    return p0

    :cond_38
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->browserType:I

    const-string v6, "com.tencent.QQBrowser.action.VIEW"

    if-ne v5, v0, :cond_7c

    iget v0, v1, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const-string v1, "com.tencent.mtt"

    if-lt v0, v3, :cond_52

    const/16 v3, 0x27

    if-gt v0, v3, :cond_52

    const-string v0, "com.tencent.mtt.MainActivity"

    goto :goto_78

    :cond_52
    const/16 v3, 0x28

    if-lt v0, v3, :cond_5d

    const/16 v3, 0x2d

    if-gt v0, v3, :cond_5d

    const-string v0, "com.tencent.mtt.SplashActivity"

    goto :goto_78

    :cond_5d
    const/16 v1, 0x2e

    if-lt v0, v1, :cond_cb

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/stat/MttLoader$a;

    move-result-object v0

    if-eqz v0, :cond_cb

    iget-object v1, v0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    :goto_74
    iget-object v1, v0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->a:Ljava/lang/String;

    :goto_78
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cb

    :cond_7c
    const/4 v3, 0x1

    if-ne v5, v3, :cond_90

    iget v1, v1, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const-string v5, "com.tencent.qbx5"

    if-ne v1, v3, :cond_8b

    const-string v0, "com.tencent.qbx5.MainActivity"

    :goto_87
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cb

    :cond_8b
    if-ne v1, v0, :cond_cb

    const-string v0, "com.tencent.qbx5.SplashActivity"

    goto :goto_87

    :cond_90
    if-nez v5, :cond_b7

    iget v0, v1, Lcom/tencent/smtt/sdk/stat/MttLoader$BrowserInfo;->ver:I

    const/4 v1, 0x6

    if-lt v0, v4, :cond_a1

    if-gt v0, v1, :cond_a1

    const-string v0, "com.tencent.qbx"

    const-string v1, "com.tencent.qbx.SplashActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cb

    :cond_a1
    if-le v0, v1, :cond_cb

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/stat/MttLoader$a;

    move-result-object v0

    if-eqz v0, :cond_cb

    iget-object v1, v0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    goto :goto_74

    :cond_b7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/stat/MttLoader$a;

    move-result-object v0

    if-eqz v0, :cond_cb

    iget-object v1, v0, Lcom/tencent/smtt/sdk/stat/MttLoader$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    goto :goto_74

    :cond_cb
    :goto_cb
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p2, :cond_f6

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_f6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_da
    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_da

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_da

    :cond_f6
    :try_start_f6
    const-string p1, "loginType"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_12a

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    const-string p2, "AnchorPoint"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentWidth()I

    move-result p2

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentHeight()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const-string p2, "ContentSize"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_12a
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f6 .. :try_end_12d} :catch_12f

    const/4 p0, 0x0

    return p0

    :catch_12f
    return v4

    :catch_130
    return v0
.end method

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/WebView;",
            ")I"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v3, "com.tencent.mtt"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1d

    const v3, 0x92ba8

    if-le v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :catchall_1d
    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    :try_start_1e
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_29

    if-eqz v2, :cond_27

    move-object p1, v1

    :cond_27
    move v1, v2

    goto :goto_2a

    :catch_29
    nop

    :goto_2a
    if-eqz v1, :cond_2f

    const-string v1, ",encoded=1"

    goto :goto_31

    :cond_2f
    const-string v1, ""

    :goto_31
    const-string v2, "mttbrowser://url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",product="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TBS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",packagename="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",from="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",version="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "4.3.0.67"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p4}, Lcom/tencent/smtt/sdk/stat/MttLoader;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I

    move-result p0

    return p0
.end method

.method public static openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.QQBrowser.action.sdk.document"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_30

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14

    :cond_30
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p5, "key_reader_sdk_id"

    const/4 v2, 0x3

    invoke-virtual {v1, p5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "key_reader_sdk_type"

    invoke-virtual {v1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4b

    const-string p5, "big_brother_source_key"

    invoke-virtual {v1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4b
    const/4 p4, 0x1

    if-nez p2, :cond_54

    const-string p2, "key_reader_sdk_path"

    :goto_50
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_59

    :cond_54
    if-ne p2, p4, :cond_59

    const-string p2, "key_reader_sdk_url"

    goto :goto_50

    :cond_59
    :goto_59
    const-string p2, "key_reader_sdk_format"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_71

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p5, 0x18

    if-lt p2, p5, :cond_71

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p5, :cond_71

    invoke-virtual {v1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_71
    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7d

    return v0

    :cond_7d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mtt/"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "loginType"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p6, :cond_a5

    const-string p1, "key_reader_sdk_extrals"

    invoke-virtual {v1, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a5
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a8} :catch_a9

    return p4

    :catch_a9
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/smtt/sdk/stat/MttLoader;->openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/smtt/sdk/stat/MttLoader;->openDocWithQb(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static openVideoWithQb(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_21

    :cond_3d
    const/4 p1, 0x1

    const/4 p2, 0x0

    :try_start_3f
    const-string v1, "loginType"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mtt"

    const-string v3, "com.tencent.mtt.browser.video.H5VideoThrdcallActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_59

    const/4 v1, 0x1

    goto :goto_5a

    :catchall_59
    const/4 v1, 0x0

    :goto_5a
    if-nez v1, :cond_69

    const/4 v1, 0x0

    :try_start_5d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_64

    goto :goto_69

    :catchall_64
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2

    :cond_69
    :goto_69
    return p1
.end method

.method public static verifySignature(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_53

    :try_start_7
    const-string p0, "AndroidManifest.xml"

    invoke-virtual {v2, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_54

    if-nez p0, :cond_13

    :try_start_f
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    return v1

    :cond_13
    const/16 v3, 0x2000

    :try_start_15
    new-array v4, v3, [B

    invoke-virtual {v2, p0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1b
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    goto :goto_1b

    :cond_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    array-length v3, p0
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_54

    const/4 v4, 0x1

    if-ge v3, v4, :cond_35

    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    :try_start_31
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    return v1

    :cond_35
    :try_start_35
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/stat/MttLoader;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4c

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_54

    if-eqz p0, :cond_4c

    :try_start_45
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4b

    :catch_4b
    return v4

    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5e

    goto :goto_5e

    :catchall_53
    move-object v2, v0

    :catchall_54
    if-eqz v0, :cond_5b

    :try_start_56
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    nop

    :cond_5b
    :goto_5b
    if-eqz v2, :cond_5e

    goto :goto_4f

    :catch_5e
    :cond_5e
    :goto_5e
    return v1
.end method

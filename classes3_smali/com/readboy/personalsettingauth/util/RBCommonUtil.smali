.class public Lcom/readboy/personalsettingauth/util/RBCommonUtil;
.super Ljava/lang/Object;
.source "RBCommonUtil.java"


# static fields
.field public static ENCRYPT_CHARSET_LETTER:Ljava/lang/String; = "%"

.field public static ENCRYPT_CHARSET_NAME:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static getAge(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 192
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    const/4 p0, 0x1

    .line 196
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v2, p0

    const/4 p0, 0x6

    .line 197
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ge v0, p0, :cond_3b

    add-int/lit8 v2, v2, -0x1

    .line 200
    :cond_3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 194
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t be born in the future"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getAppIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-class v0, Lcom/readboy/personalsettingauth/util/RBCommonUtil;

    monitor-enter v0

    const/4 v1, 0x0

    .line 139
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_14
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    const/4 v2, 0x0

    .line 141
    :try_start_d
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_11} :catch_15
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_1b

    :catch_14
    move-object p0, v1

    .line 146
    :catch_15
    :goto_15
    :try_start_15
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_12

    .line 147
    monitor-exit v0

    return-object p0

    :goto_1b
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/readboy/personalsettingauth/util/RBCommonUtil;

    monitor-enter v0

    .line 40
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 43
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 44
    sget-object v1, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->sAppContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 45
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_26
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    monitor-exit v0

    return-object p0

    .line 47
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_26
    .catchall {:try_start_1a .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    goto :goto_2d

    :catch_26
    move-exception p0

    .line 50
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    const/4 p0, 0x0

    .line 52
    monitor-exit v0

    return-object p0

    :goto_2d
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const-class v0, Lcom/readboy/personalsettingauth/util/RBCommonUtil;

    monitor-enter v0

    const/4 v1, 0x0

    .line 82
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 83
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 85
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_12
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_18

    :catch_12
    move-exception p0

    .line 87
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10

    .line 89
    monitor-exit v0

    return v1

    :goto_18
    monitor-exit v0

    throw p0
.end method

.method public static initRBAuthEncryptConfig()V
    .registers 3

    const-string v0, "126%138%136%73%141%128%124%127%125%138%148%73%139%128%141%142%138%137%124%135%142%128%143%143%132%137%130%124%144%143%131%73%92%94%111%100%106%105%122%103%106%98%100%105%"

    .line 204
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_SUCCESSED:Ljava/lang/String;

    const-string v0, "126%138%136%73%141%128%124%127%125%138%148%73%139%128%141%142%138%137%124%135%142%128%143%143%132%137%130%124%144%143%131%73%92%94%111%100%106%105%122%103%106%98%100%105%122%97%92%100%103%96%95%"

    .line 205
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED:Ljava/lang/String;

    const-string v0, "135%138%130%132%137%122%128%141%141%138%141%137%138%"

    .line 206
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED_ERROR_NO:Ljava/lang/String;

    const-string v0, "135%138%130%132%137%122%128%141%141%138%141%136%142%130%"

    .line 207
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED_ERROR_MSG:Ljava/lang/String;

    const-string v0, "126%137%73%127%141%128%124%136%73%124%126%143%132%138%137%73%92%94%111%100%106%105%122%93%92%110%96%122%112%107%103%106%92%95%"

    .line 208
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->ACTION_SERVICE_LOGIN:Ljava/lang/String;

    const-string v0, "141%125%110%128%126%141%128%143%96%127%132%143%97%135%124%130%"

    .line 209
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_SECRET_FLAG:Ljava/lang/String;

    const-string v0, "127%128%127%82%125%82%76%75%126%81%75%76%79%128%82%83%127%124%77%75%80%80%75%78%82%127%76%125%129%82%124%125%"

    .line 210
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_login_appsec:Ljava/lang/String;

    const-string v0, "126%138%136%73%141%128%124%127%125%138%148%73%139%128%141%142%138%137%124%135%142%128%143%143%132%137%130%"

    .line 211
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_login_appid:Ljava/lang/String;

    const-string v1, "131%143%143%139%142%85%74%74%124%126%126%138%144%137%143%73%141%128%124%127%125%138%148%73%126%138%136%"

    .line 212
    invoke-static {v1}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/readboy/personalsettingauth/RBConfigureUtil;->USER_DEBUG_URL:Ljava/lang/String;

    .line 213
    invoke-static {v1}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->USER_RELEASE_URL:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->SERVICE_LOGIN_PKG:Ljava/lang/String;

    const-string v0, "73%128%125%124%130%73%96%125%124%130%104%144%143%144%124%135%110%128%141%145%132%126%128%"

    .line 215
    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->SERVICE_LOGIN_CLASS:Ljava/lang/String;

    return-void
.end method

.method public static final isPersonalSettingAuthVersion(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.readboy.personalsetting"

    .line 162
    invoke-static {p0, v0}, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1ae

    if-lt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

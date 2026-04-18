.class public Lcom/readboy/personalsettingauth/RBConfigureUtil;
.super Ljava/lang/Object;
.source "RBConfigureUtil.java"


# static fields
.field public static ACTION_SERVICE_LOGIN:Ljava/lang/String; = null

.field public static INTENT_EXTRA_AVATAR:Ljava/lang/String; = null

.field public static INTENT_EXTRA_CONTAIN_ERROR_VER:Ljava/lang/String; = null

.field public static INTENT_EXTRA_EMAIL:Ljava/lang/String; = null

.field public static INTENT_EXTRA_ERROR_MSG:Ljava/lang/String; = null

.field public static INTENT_EXTRA_ERROR_NO:Ljava/lang/String; = null

.field public static INTENT_EXTRA_EXPIRE:Ljava/lang/String; = null

.field public static INTENT_EXTRA_MOBILE:Ljava/lang/String; = null

.field public static INTENT_EXTRA_NO_LOGIN_ZHUHAI_FLAG:Ljava/lang/String; = null

.field public static INTENT_EXTRA_ORG_ACCOUNT:Ljava/lang/String; = null

.field public static INTENT_EXTRA_ORG_PW:Ljava/lang/String; = null

.field public static INTENT_EXTRA_SECRET_FLAG:Ljava/lang/String; = null

.field public static INTENT_EXTRA_TOKEN:Ljava/lang/String; = null

.field public static INTENT_EXTRA_UID:Ljava/lang/String; = null

.field public static RECEIVER_LOGIN_FAILED:Ljava/lang/String; = null

.field public static RECEIVER_LOGIN_FAILED_ERROR_MSG:Ljava/lang/String; = null

.field public static RECEIVER_LOGIN_FAILED_ERROR_NO:Ljava/lang/String; = null

.field public static RECEIVER_LOGIN_SUCCESSED:Ljava/lang/String; = null

.field public static SERVICE_LOGIN_CLASS:Ljava/lang/String; = null

.field public static SERVICE_LOGIN_PKG:Ljava/lang/String; = null

.field public static USER_DEBUG_URL:Ljava/lang/String; = null

.field public static USER_RELEASE_URL:Ljava/lang/String; = null

.field public static USER_URL:Ljava/lang/String; = null

.field public static _appid:Ljava/lang/String; = ""

.field public static _appsec:Ljava/lang/String; = ""

.field public static _login_appid:Ljava/lang/String;

.field public static _login_appsec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static _getMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "MD5"

    .line 182
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 184
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 188
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_31

    .line 189
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_27

    const-string v4, "0"

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_27
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 195
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object p0
.end method

.method public static decryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 323
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 324
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->ENCRYPT_CHARSET_LETTER:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 326
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1b

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    goto :goto_c

    :cond_2f
    return-object v0

    :catch_30
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 347
    :try_start_0
    sget-object v0, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->ENCRYPT_CHARSET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 348
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    .line 350
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2d

    .line 351
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0x1b

    int-to-byte v3, v2

    .line 352
    aput-byte v3, p0, v1

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->ENCRYPT_CHARSET_LETTER:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2d
    return-object v0

    :catch_2e
    move-exception p0

    .line 358
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNumber(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_43

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.readboy.personal.SerialProvider/data"

    .line 394
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string p0, "data"

    .line 395
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 398
    :try_start_16
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 399
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 401
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_36
    .catchall {:try_start_16 .. :try_end_2a} :catchall_34

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_2e
    if-eqz v6, :cond_43

    :goto_30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_34
    move-exception p0

    goto :goto_3d

    :catch_36
    move-exception p0

    .line 406
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    if-eqz v6, :cond_43

    goto :goto_30

    :goto_3d
    if-eqz v6, :cond_42

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_42
    throw p0

    :cond_43
    :goto_43
    const-string p0, ""

    return-object p0
.end method

.method public static initRBAuthConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 364
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    .line 365
    sput-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appsec:Ljava/lang/String;

    const-string p0, "rbNotLoginSendZhuHai"

    .line 366
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_NO_LOGIN_ZHUHAI_FLAG:Ljava/lang/String;

    const-string p0, "account"

    .line 367
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ORG_ACCOUNT:Ljava/lang/String;

    const-string p0, "pw"

    .line 368
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ORG_PW:Ljava/lang/String;

    const-string p0, "access_token"

    .line 369
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_TOKEN:Ljava/lang/String;

    const-string p0, "access_expire"

    .line 370
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_EXPIRE:Ljava/lang/String;

    const-string p0, "uid"

    .line 371
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_UID:Ljava/lang/String;

    const-string p0, "email"

    .line 372
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_EMAIL:Ljava/lang/String;

    const-string p0, "mobile"

    .line 373
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_MOBILE:Ljava/lang/String;

    const-string p0, "avatar"

    .line 374
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_AVATAR:Ljava/lang/String;

    const-string p0, "errno"

    .line 375
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ERROR_NO:Ljava/lang/String;

    const-string p0, "errmsg"

    .line 376
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_ERROR_MSG:Ljava/lang/String;

    const-string p0, "contain_error_ver"

    .line 377
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_CONTAIN_ERROR_VER:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->initRBAuthEncryptConfig()V

    .line 379
    sget-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_login_appid:Ljava/lang/String;

    sget-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, ""

    .line 380
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    .line 381
    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appsec:Ljava/lang/String;

    .line 388
    :cond_47
    sget-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->USER_RELEASE_URL:Ljava/lang/String;

    sput-object p0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->USER_URL:Ljava/lang/String;

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 165
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 166
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 167
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

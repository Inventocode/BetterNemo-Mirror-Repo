.class public Lcom/ishumei/sdk/captcha/SmCaptcha;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static O0000O000000oO:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "code\":(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ishumei/sdk/captcha/SmCaptcha;->O0000O000000oO:Ljava/util/regex/Pattern;

    :try_start_8
    const-string v0, "smcaptcha"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_d

    :catchall_d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O0000O000000oO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/ishumei/sdk/captcha/SmCaptcha;

    invoke-direct {v0}, Lcom/ishumei/sdk/captcha/SmCaptcha;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptcha;->m2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static O0000O000000oO(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/ishumei/sdk/captcha/SmCaptcha;->O0000O000000oO:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_20
    return v1
.end method

.method public static O000O00000OoO(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 10

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    return-object v2

    :cond_14
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O000O00000o0O(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v3, "908d989e9196859e8b969091"

    invoke-static {v3}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto/16 :goto_f3

    :cond_37
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O000O00000OoO(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/ishumei/sdk/captcha/O000O00000OoO;->O0000O000000oO([B)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0}, Lcom/ishumei/sdk/captcha/SmCaptcha;->O000O00000OoO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "9c909b9a"

    invoke-static {v5}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "8f8d96"

    invoke-static {v5}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "9c9e"

    invoke-static {v5}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/ishumei/sdk/captcha/SmCaptcha;->O0000O000000oO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v7, "8b96929a8c8b9e928f"

    invoke-static {v7}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "929bca"

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "c0908d989e9196859e8b969091c2"

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O000O00000OoO(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/ishumei/sdk/captcha/O000O00000o0O;

    invoke-direct {v0}, Lcom/ishumei/sdk/captcha/O000O00000o0O;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ishumei/sdk/captcha/O000O00000o0O;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ishumei/sdk/captcha/SmCaptcha;->O0000O000000oO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e0

    return-object v2

    :cond_e0
    new-instance v0, Landroid/webkit/WebResourceResponse;
    :try_end_e2
    .catchall {:try_start_a .. :try_end_e2} :catchall_f3

    const-string v1, "text/plain"

    const-string v3, "utf-8"

    :try_start_e6
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_f2
    .catchall {:try_start_e6 .. :try_end_f2} :catchall_f3

    return-object v0

    :catchall_f3
    :cond_f3
    :goto_f3
    return-object v2
.end method

.method public static O000O00000OoO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/ishumei/sdk/captcha/SmCaptcha;

    invoke-direct {v0}, Lcom/ishumei/sdk/captcha/SmCaptcha;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptcha;->x2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public native m2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native x2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

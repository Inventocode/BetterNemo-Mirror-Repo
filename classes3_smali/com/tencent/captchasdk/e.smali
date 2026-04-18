.class Lcom/tencent/captchasdk/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/captchasdk/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/captchasdk/e$a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:Landroid/webkit/WebChromeClient;

.field private final h:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/captchasdk/e$a;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/captchasdk/e$1;

    invoke-direct {v0, p0}, Lcom/tencent/captchasdk/e$1;-><init>(Lcom/tencent/captchasdk/e;)V

    iput-object v0, p0, Lcom/tencent/captchasdk/e;->g:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/tencent/captchasdk/e$2;

    invoke-direct {v0, p0}, Lcom/tencent/captchasdk/e$2;-><init>(Lcom/tencent/captchasdk/e;)V

    iput-object v0, p0, Lcom/tencent/captchasdk/e;->h:Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    iput-object p3, p0, Lcom/tencent/captchasdk/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    if-eqz p5, :cond_24

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_24

    iput-object p5, p0, Lcom/tencent/captchasdk/e;->e:Ljava/lang/String;

    goto :goto_28

    :cond_24
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/captchasdk/e;->e:Ljava/lang/String;

    :goto_28
    if-lez p6, :cond_2d

    iput p6, p0, Lcom/tencent/captchasdk/e;->f:I

    goto :goto_31

    :cond_2d
    const/16 p1, 0x64

    iput p1, p0, Lcom/tencent/captchasdk/e;->f:I

    :goto_31
    invoke-virtual {p0}, Lcom/tencent/captchasdk/e;->b()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .registers 4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcwebscheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/e;->e(Landroid/net/Uri;)V

    :cond_1b
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readyCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/e;->d(Landroid/net/Uri;)V

    :cond_2a
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/e;->c(Landroid/net/Uri;)V

    :cond_39
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jserrorCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/e;->b(Landroid/net/Uri;)V

    :cond_48
    return-void
.end method

.method static synthetic a(Lcom/tencent/captchasdk/e;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/e;->a(Landroid/net/Uri;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_c

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :catch_c
    :cond_c
    return v0
.end method

.method private b(Landroid/net/Uri;)V
    .registers 7

    const-string v0, "msg"

    if-eqz p1, :cond_25

    const/16 v1, -0x3e9

    :try_start_6
    iget-object v2, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    if-eqz v2, :cond_25

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/tencent/captchasdk/e$a;->a(ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_25

    :catch_1c
    iget-object v2, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Lcom/tencent/captchasdk/e$a;->a(ILjava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private c(Landroid/net/Uri;)V
    .registers 9

    const-string v0, "callback"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_17b

    iget-object v1, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    if-eqz v1, :cond_17b

    if-eqz p1, :cond_17b

    :try_start_e
    const-string v1, "list"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_17b

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_17b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4c

    invoke-static {}, Lcom/tencent/captchasdk/c;->a()V

    const-string v1, "cpu_info"

    sget-object v4, Lcom/tencent/captchasdk/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpu_hardware"

    sget-object v4, Lcom/tencent/captchasdk/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpu_serial"

    sget-object v4, Lcom/tencent/captchasdk/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4c
    and-int/lit8 v1, p1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5c

    const-string v1, "battery_level"

    iget-object v5, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/captchasdk/c;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5c
    and-int/lit8 v1, p1, 0x4

    const/4 v5, 0x4

    if-ne v1, v5, :cond_83

    const-string v1, "dpi"

    iget-object v5, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/captchasdk/c;->b(Landroid/content/Context;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "width"

    iget-object v5, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/captchasdk/c;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    iget-object v5, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/captchasdk/c;->d(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_83
    and-int/lit8 v1, p1, 0x8

    const/16 v5, 0x8

    if-ne v1, v5, :cond_94

    const-string v1, "sensor_flag"

    iget-object v5, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/captchasdk/c;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_94
    and-int/lit8 v1, p1, 0x10

    const/4 v5, 0x0

    const/16 v6, 0x10

    if-ne v1, v6, :cond_bc

    const-string v1, "network_type"

    iget-object v6, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/tencent/captchasdk/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_operator_name"

    iget-object v6, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/tencent/captchasdk/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_connection_type"

    iget-object v6, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/tencent/captchasdk/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bc
    and-int/lit8 v1, p1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_e3

    const-string v1, "wifi_ssid"

    iget-object v4, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/tencent/captchasdk/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wifi_bssid"

    iget-object v4, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/tencent/captchasdk/c;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wifi_connected"

    iget-object v3, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/captchasdk/c;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e3
    and-int/lit8 v1, p1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_fb

    const-string v1, "band_version"

    invoke-static {}, Lcom/tencent/captchasdk/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osname"

    invoke-static {}, Lcom/tencent/captchasdk/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_fb
    and-int/lit16 v1, p1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_117

    const-string v1, "app_name"

    iget-object v3, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/captchasdk/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    iget-object v3, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/captchasdk/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_117
    and-int/lit16 v1, p1, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_126

    const-string v1, "kernel_version"

    invoke-static {}, Lcom/tencent/captchasdk/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_126
    const/16 v1, 0x200

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_13d

    const-string p1, "is_emulator"

    invoke-static {}, Lcom/tencent/captchasdk/c;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_root"

    invoke-static {}, Lcom/tencent/captchasdk/c;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_13d
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_17b

    const-string p1, "platform"

    const-string v1, "Android"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/captchasdk/e$3;

    invoke-direct {v1, p0}, Lcom/tencent/captchasdk/e$3;-><init>(Lcom/tencent/captchasdk/e;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_176} :catch_177

    goto :goto_17b

    :catch_177
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17b
    :goto_17b
    return-void
.end method

.method private d(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    if-eqz v0, :cond_1b

    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/captchasdk/e$a;->a(II)V

    :cond_1b
    return-void
.end method

.method private e(Landroid/net/Uri;)V
    .registers 6

    const-string v0, "retJson"

    :try_start_2
    iget-object v1, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    if-eqz v1, :cond_1d

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/captchasdk/e$a;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_1d

    :catch_14
    iget-object v1, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/captchasdk/e$a;->a(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    iput-object v0, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    return-void
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    const-string v1, "tcaptcha verify_error"

    if-nez v0, :cond_c

    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/tencent/captchasdk/e;->a:Lcom/tencent/captchasdk/e$a;

    if-nez v0, :cond_16

    const-string v0, "listener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/captchasdk/e;->g:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/captchasdk/e;->h:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_2f
    iget-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    iget-object v0, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_43
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TCSDK/1.0.2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_8e

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8e
    :goto_8e
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_aa

    iget-object v0, p0, Lcom/tencent/captchasdk/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/captchasdk/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :try_start_a2
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_aa

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_aa
    :goto_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/tcaptcha_webview.html?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/captchasdk/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/captchasdk/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/captchasdk/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/captchasdk/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/captchasdk/e;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

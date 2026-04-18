.class public Lcom/tencent/open/im/IM;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final CHAT_TYPE_AIO:Ljava/lang/String; = "thirdparty2c"

.field public static final CHAT_TYPE_AUDIO_CHAT:Ljava/lang/String; = "audio_chat"

.field public static final CHAT_TYPE_VIDEO_CHAT:Ljava/lang/String; = "video_chat"

.field public static final IM_LENGTH_SHORT:I = -0x3

.field public static final IM_SHOULD_DOWNLOAD:I = -0x2

.field public static final IM_SUCCESS:I = 0x0

.field public static final IM_UIN_EMPTY:I = -0x1

.field public static final IM_UIN_NOT_DIGIT:I = -0x4

.field public static final IM_UNKNOWN_TYPE:I = -0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 3

    .line 36
    invoke-direct {p0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V
    .registers 4

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method


# virtual methods
.method public startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const-string v0, "ImApi"

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Lcom/tencent/connect/a;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Z

    move-result v0

    const/4 v1, -0x5

    if-eqz v0, :cond_b

    return v1

    :cond_b
    if-eqz p2, :cond_c5

    const-string v0, "thirdparty2c"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "video_chat"

    const-string v3, "audio_chat"

    if-nez v0, :cond_27

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_c5

    .line 66
    :cond_27
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_31

    .line 68
    :cond_2e
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    :goto_31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p1, -0x1

    return p1

    .line 79
    :cond_39
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_42

    const/4 p1, -0x3

    return p1

    :cond_42
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_44
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 86
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_56

    const/4 p1, -0x4

    return p1

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 94
    :cond_59
    invoke-static {p1}, Lcom/tencent/open/utils/m;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 95
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    .line 96
    iget-object p3, p0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 97
    invoke-virtual {p3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/open/utils/m;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x3

    iget-object p3, p0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/open/utils/m;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x4

    invoke-static {p4}, Lcom/tencent/open/utils/m;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "mqqapi://im/chat?chat_type=%1$s&uin=%2$s&version=1&src_type=app&open_id=%3$s&app_id=%4$s&app_pkg_name=%5$s"

    .line 96
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 98
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "com.tencent.mobileqq"

    .line 99
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "pkg_name"

    .line 101
    invoke-virtual {v2, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 109
    :cond_a9
    :try_start_a9
    new-instance p2, Lcom/tencent/open/TDialog;

    const-string v5, ""

    const-string p3, ""

    invoke-virtual {p0, p3}, Lcom/tencent/connect/common/BaseApi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V
    :try_end_be
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_be} :catch_bf

    goto :goto_c3

    :catch_bf
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_c3
    const/4 p1, -0x2

    return p1

    :cond_c5
    :goto_c5
    return v1
.end method
